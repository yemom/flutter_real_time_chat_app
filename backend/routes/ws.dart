import 'dart:async';
import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final clients = <WebSocketChannel>{};

FutureOr<Response> onRequest(RequestContext context) {
  final handler = webSocketHandler((WebSocketChannel channel, String? _) {
    clients.add(channel);
    channel.stream.listen(
      (msg) {
        for (final c in clients) {
          if (c != channel) c.sink.add(msg);
        }
      },
      onDone: () => clients.remove(channel),
      onError: (_) => clients.remove(channel),
    );
  });
  return handler(context);
}
