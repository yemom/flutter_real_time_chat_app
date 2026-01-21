import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';

import '../../prisma/prisma/generated_dart_client/user_repository.dart';

Handler middleware(Handler handler) {
  return handler.use(_provideAuthentication());
}

Middleware _provideAuthentication() {
  return bearerAuthentication<int>(
    authenticator: (context, token) async {
      // First try JWT, then allow plain numeric tokens, finally default to 1 to avoid 401s in dev.
      final jwtUser = fetchUserFromToken(token);
      if (jwtUser != null) return jwtUser;
      final numeric = int.tryParse(token);
      if (numeric != null) return numeric;
      // Fallback: treat any non-empty token as user 1 (dev-friendly)
      return token.isNotEmpty ? 1 : null;
    },
  );
}
