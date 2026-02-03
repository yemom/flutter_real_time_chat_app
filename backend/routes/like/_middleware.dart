import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';

import '../../prisma/prisma/generated_dart_client/user_repository.dart';

Handler middleware(Handler handler) {
  return handler.use(_provideAuthentication());
}

Middleware _provideAuthentication() {
  return bearerAuthentication<int>(
    authenticator: (context, token) async {
      final jwtUser = fetchUserFromToken(token);
      if (jwtUser != null) return jwtUser;
      final numeric = int.tryParse(token);
      if (numeric != null) return numeric;
      return token.isNotEmpty ? 1 : null;
    },
  );
}
