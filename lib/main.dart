import 'package:flutter/material.dart';
import 'package:korean_food/Screen/bottom_nav_bar_screen_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '행스 홈',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xffF2C6BD),
          elevation: 1
        ),
        primaryColor: Color(0xfeeccc2)

       // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xfeeccc2)),
        // useMaterial3: true,
      ),
      home: BottmNavBarScreen(),
    );
  }
}
