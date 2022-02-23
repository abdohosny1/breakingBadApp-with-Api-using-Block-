import 'package:breakingbad_api_with_block/feature/splash/splash.dart';
import 'package:flutter/material.dart';
import 'cort/router/router.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: const SplashScreen(),
    );
  }
}
