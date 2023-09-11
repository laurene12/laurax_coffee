import 'package:flutter/material.dart';
import 'package:laurax_coffee/screens/auth/welcome.dart';
import 'package:laurax_coffee/screens/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kWhiteColor,
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}
