import 'package:flutter/material.dart';
import 'package:mycv/const/app_colors.dart';

import 'ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter.dev',
      theme: ThemeData(
        fontFamily: 'Turing',
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
        primaryColor: AppColors.miamiColor,
      ),
      home: const SplashScreen(),
    );
  }
}

