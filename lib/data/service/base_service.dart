import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as parser;
import 'package:myfirst_flutter_project/pages/login_page.dart' as AppConfig;

class ApiException implements Exception {
  final int? statusCode;
  final String message;
  ApiException(this.message, {this.statusCode});
  @override
  String toString() => message;
}

abstract class ServiceBase<T> {
  Future<T> call();

  Uri _getV1Url(String url) => Uri.parse('${AppConfig.baseUrl}/$url');

  Future<Map<String, dynamic>> get(String apiUrl, {String? token}) async {
    try {
      return _handleResponse(await MyRequest(token).get(_getV1Url(apiUrl)));
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Network error: ${e.toString()}');
    }
  }

  Future<Map<String, dynamic>> post(
    String apiUrl, {
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      final response = await MyRequest(
        token,
      ).post(_getV1Url(apiUrl), body: jsonEncode(body));
      return _handleResponse(response);
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Network error: ${e.toString()}');
    }
  }

  Future<Map<String, dynamic>> put(
    String apiUrl, {
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      final req =
          http.Request('PUT', _getV1Url(apiUrl))
            ..headers['Content-Type'] = 'application/json'
            ..body = body == null ? '' : jsonEncode(body);
      final streamed = await MyRequest(token).send(req);
      return _handleResponse(await http.Response.fromStream(streamed));
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Network error: ${e.toString()}');
    }
  }

  Future<Map<String, dynamic>> delete(
    String apiUrl, {
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      final response = await MyRequest(token).send(
        http.Request('DELETE', _getV1Url(apiUrl))
          ..headers['Content-Type'] = 'application/json'
          ..body = body == null ? '' : jsonEncode(body),
      );
      return _handleResponse(await http.Response.fromStream(response));
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Network error: ${e.toString()}');
    }
  }

  Future<Map<String, dynamic>> upload(
    String apiUrl,
    String fieldName,
    String path, {
    String? token,
  }) async {
    try {
      final client = http.MultipartRequest('POST', _getV1Url(apiUrl));
      if (token != null) {
        client.headers.addAll({'Authorization': 'Bearer $token'});
      }
      client.files.add(
        await http.MultipartFile.fromPath(
          fieldName,
          path,
          contentType: parser.MediaType('image', 'jpeg'),
        ),
      );

      return _handleResponse(
        await http.Response.fromStream(await client.send()),
      );
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Network error: ${e.toString()}');
    }
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    final code = response.statusCode;
    final body = response.body;
    if (code >= 200 && code < 300) {
      try {
        return jsonDecode(body);
      } catch (_) {
        return {'data': body};
      }
    }

    String message = 'Request failed';
    try {
      final json = jsonDecode(body);
      message = (json['error'] ?? json['message'] ?? message).toString();
    } catch (_) {
      // Fallback to reason phrase or raw body
      message = body.isEmpty ? 'HTTP $code' : body;
    }
    throw ApiException(message, statusCode: code);
  }
}

class MyRequest extends http.BaseClient {
  final String? token;

  MyRequest([this.token]);
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (token != null) {
      request.headers['Authorization'] = 'Bearer $token';
    }
    return request.send();
  }
}
