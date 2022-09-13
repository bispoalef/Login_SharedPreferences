import 'package:flutter/material.dart';
import 'package:login_shared_prefs/services/prefs_service.dart';
import 'package:login_shared_prefs/routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.wait([
      PrefsService.isAuth(),
      Future.delayed(const Duration(seconds: 2)),
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed(Routes.HOME)
        : Navigator.of(context).pushReplacementNamed(Routes.LOGIN));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
