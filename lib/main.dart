import 'package:flutter/material.dart';
import 'package:login_shared_prefs/pages/home_page.dart';
import 'package:login_shared_prefs/pages/login_page.dart';
import 'package:login_shared_prefs/pages/splash_page.dart';
import 'package:login_shared_prefs/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: Routes.SPLASH,
      routes: {
        Routes.SPLASH: (_) => const SplashPage(),
        Routes.LOGIN: (_) => const LoginPage(),
        Routes.HOME: (_) => const HomePage(),
      },
    );
  }
}
