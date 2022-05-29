import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mycv/pages/home_page.dart';

import '../const/app_colors.dart';
import 'main_home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Timer(const Duration(seconds: 5), () {
       Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>  MainHome()));
    });
    return Scaffold(
      // backgroundColor: AppColors.miamiColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SuperellipseDemo(icon: const Icon(Entypo.light_bulb), color: Colors.blueAccent.shade400)
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Software Dev. Nairobi, Kenya',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ))
                            ]),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}