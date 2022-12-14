import 'package:flutter/material.dart';
import 'package:login_shared_prefs/pages/home_page.dart';
import 'package:login_shared_prefs/pages/home_page_detail.dart';
import 'package:login_shared_prefs/pages/login_page.dart';
import 'package:login_shared_prefs/pages/splash_page.dart';
import 'package:login_shared_prefs/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      routes: {
        Routes.SPLASH: (_) => const SplashPage(),
        Routes.LOGIN: (_) => LoginPage(),
        Routes.HOME: (_) => const HomePage(),
        Routes.HOME_DETAIL: (_) => const HomePageDetail(),
      },
    );
  }
}
