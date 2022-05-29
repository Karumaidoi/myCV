import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mycv/const/app_colors.dart';
import 'package:mycv/pages/experience.dart';

import 'home_page.dart';

class EduScreen extends StatelessWidget {
  const EduScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: const EdgeInsets.only(left: 18, right: 18,),

        child: ListView(
          children: [
            const SizedBox(height: 12,),
            Card(
              child: ListTile(
                leading: SuperellipseDemo(
                  icon: const Icon(Icons.lightbulb_outline_rounded), color: AppColors.softColor,
                ),
                title: const Text(
                  'Learning',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                subtitle: const Text(
                  'Path for my software engineering curve.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text(
            'Insights',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
            Card(child: ListDat(icon: const Icon(Feather.award),company: 'Machakos University', status: 'Bachelor of Science(Computer)', duration: '4 Years', color: AppColors.encoreColor),),
            Card(child: ListDat(icon: const Icon(Feather.award),company: 'Kipipiri Boys', status: 'Kenya Certicate of Secondary Education', duration: '4 Years', color: AppColors.auditionColor),),
            const SizedBox(height: 20,),
            SizedBox(height: 100, width: double.infinity, child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:  2,
                            mainAxisExtent: 95,
                            childAspectRatio: 1,
                            crossAxisSpacing: 25,
                            mainAxisSpacing: 55,), children: [
                               Card(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children :const [
                                     Icon(Feather.award),
                                     SizedBox(height: 6,),
                                     Text('Design Basics', style: TextStyle(fontSize: 13),),
                                     SizedBox(height: 6,),
                                     Text('2019', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),)
                                   ]
                                 ),
                               ),
                               Card(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children :const [
                                     Icon(Feather.award),
                                     SizedBox(height: 6,),
                                     Text('Dev Star', style: TextStyle(fontSize: 13),),
                                     SizedBox(height: 6,),
                                     Text('2022', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),)
                                   ]
                                 ),
                               ),
                            ],),),
            
          ],
          
        ),
      ),
    );
  }
}