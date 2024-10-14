import 'package:flutter/material.dart';
import 'package:lend_mingle/pages/board_screen.dart';
import 'package:lend_mingle/pages/login_screen.dart';
import 'package:lend_mingle/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LendMingle',
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffD9FF7E)),
      routes: {
        '/boardingScreen': (context) => BoardingScreen(),
        '/mainPage': (context) => MainPage(),
        '/loginPage': (context) => LoginScreen(),
      },
      home: LoginScreen(),
    );
  }
}
