import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_config.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/post_provider.dart';
import 'package:myfirst_flutter_project/provider/user_provider.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.initialize();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppRepo>(create: (context) => AppRepo()),
        ChangeNotifierProvider<PostProvider>(
          create: (context) => PostProvider(),
        ),
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColor.background,
        colorScheme: ColorScheme.light(
          primary: AppColor.primary,
          secondary: AppColor.primary,
          surface: AppColor.cardBackground,
          onPrimary: AppColor.black,
          onSecondary: AppColor.black,
          onSurface: AppColor.fontTitle,
          error: Colors.redAccent,
          onError: AppColor.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.cardBackground,
          elevation: 0,
          foregroundColor: AppColor.fontTitle,
          surfaceTintColor: Colors.transparent,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColor.fontBody),
          bodyMedium: TextStyle(color: AppColor.fontBody),
          bodySmall: TextStyle(color: AppColor.fontLight),
          titleMedium: TextStyle(color: AppColor.fontTitle),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
            foregroundColor: AppColor.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            elevation: 0,
          ),
        ),
      ),
      initialRoute: AppRoute.login,
      routes: AppRoute.pages,
    );
  }
}
/**
 * void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppRepo>(
        create: (context) => AppRepo(),
      ),
      ChangeNotifierProvider<PostProvider>(
        create: (context) => PostProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.user,
      routes: AppRoutes.pages,
    );
  }
}
 */