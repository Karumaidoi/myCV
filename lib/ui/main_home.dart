import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mycv/const/app_colors.dart';
import 'package:mycv/pages/education.dart';
import 'package:mycv/pages/experience.dart';
import 'package:mycv/pages/github.dart';
import 'package:mycv/pages/home_page.dart';
import 'package:mycv/pages/tools.dart';

class MainHome extends StatefulWidget {
  MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currentIndex = 0;
  List screens = [
    const HomeScreen(),
    const ExpScreen(),
    const EduScreen(),
    const ToolsScreen(),
  ];
  List titles = [
    'About',
    'Experience',
    'Education',
    'Tools',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            titles[_currentIndex],
            style: const TextStyle(fontSize: 14),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GitHubPage();
                  }));
                },
                icon: const Icon(
                  Zocial.github,
                  color: Colors.white,
                  size: 19,
                )),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/github.jpg',
                ),
                radius: 13,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ]),
      backgroundColor: AppColors.miamiColor,
      body: screens[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: AppColors.miamiColor,
        selectedColor: Colors.white,
        currentIndex: _currentIndex,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Feather.activity),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.lightbulb_outline),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Entypo.tools),
          ),
        ],
      ),
    );
  }
}
