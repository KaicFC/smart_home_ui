import 'package:flutter/material.dart';
import 'package:smart_home_1/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0x191970),
        scaffoldBackgroundColor: const Color(0x191970),

      ),
      home: const SplashPage(),
    );
  }
}
