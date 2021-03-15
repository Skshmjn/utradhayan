import 'package:flutter/material.dart';
import 'package:utradhayan/pages/app_main.dart';
import 'package:utradhayan/utils/theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: AppHome(),
    );
  }
}
