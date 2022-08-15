import 'package:flutter/material.dart';
import 'package:tech_ecommerce_app/screens/splash_screen.dart';
import 'package:tech_ecommerce_app/screens/test_screen.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Ecommerce App',
      theme: ThemeData(
        // // backgroundColor: kBackgroundColor,
        // primaryColor: kBackgroundColor,
        // brightness: Brightness.light,
        fontFamily: 'Raleway',
      ),
      home: const SplashScreen(),
      // home: const TestScreen(),
    );
  }
}
