import 'package:flutter/material.dart';
import 'package:tech_ecommerce_app/screens/login_screen.dart';
// import 'package:tech_ecommerce_app/screens/splash_screen.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Ecommerce App',
      home: LoginScreen(),
      // home: SplashScreen(),
    );
  }
}
