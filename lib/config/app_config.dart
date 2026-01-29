import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';

class AppConfig {
  // Default LAN host (change to your machine IP if needed)
  static const _defaultLanHost = 'http://10.5.232.248:8081';

  // Holds chosen base URL after initialization
  static late final String baseUrl;

  // Initialize AppConfig. Call this before runApp().
  // Priority: --dart-define=MOBILE_HOST > emulator detection (10.0.2.2) > default LAN host
  static Future<void> initialize() async {
    const envHost = String.fromEnvironment('MOBILE_HOST', defaultValue: '');
    if (envHost.isNotEmpty) {
      baseUrl = envHost;
      return;
    }

    // Default if not running on Android/iOS
    if (!Platform.isAndroid && !Platform.isIOS) {
      baseUrl = _defaultLanHost;
      return;
    }

    // Detect whether running on a physical device or emulator/simulator
    try {
      final deviceInfo = DeviceInfoPlugin();
      bool? isPhysical;
      if (Platform.isAndroid) {
        final info = await deviceInfo.androidInfo;
        isPhysical = info.isPhysicalDevice;
      } else if (Platform.isIOS) {
        final info = await deviceInfo.iosInfo;
        isPhysical = info.isPhysicalDevice;
      }

      if (isPhysical == false) {
        // Emulator/simulator: use Android emulator host proxy
        baseUrl = 'http://10.0.2.2:8081';
      } else {
        // Physical device: use LAN host (default can be overridden with MOBILE_HOST)
        baseUrl = _defaultLanHost;
      }
    } catch (_) {
      // On any error, fall back to default LAN host
      baseUrl = _defaultLanHost;
    }
  }
}
