import 'package:flutter/material.dart';
import 'package:mycv/const/app_colors.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, ),
        child: ListView(
          children: [
            const SizedBox(height: 12,),
             Card(
              child: ListTile(
                leading: SuperellipseDemo(
                  icon: const Icon(Icons.home_filled), color: Colors.blueAccent.shade400,
                ),
                title: const Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                subtitle: const Text(
                  'A  quick overview of my hands-on experience',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CardData(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Interests',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
                runSpacing: 10,
                spacing: 10,
                direction: Axis.horizontal,
                children: const [
                  Chip(
                    label: Text(
                      'Designing Websites',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Graphics',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Nature',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Blogging',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Travelling',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  )
                ]),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

//
class CardData extends StatelessWidget {
  const CardData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Overview'),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'Graphic Design',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  '78%',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.lightColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: double.infinity,
                ),
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.webColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.width * 0.68,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'Web Design',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  '95%',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.lightColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: double.infinity,
                ),
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.tonyColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.width * 0.85,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'Mobile App Development',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  '92%',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.lightColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: double.infinity,
                ),
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.emberColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.width * 0.80,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'UI / UX',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  '65%',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.lightColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: double.infinity,
                ),
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.neonColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.width * 0.60,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'Soft skills',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  '90%',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.lightColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: double.infinity,
                ),
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                      color: AppColors.softColor,
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.width * 0.78,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

//
class SuperellipseDemo extends StatelessWidget {
  final Icon icon;
  final Color color;
  const SuperellipseDemo({Key? key, required this.icon, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      shape: SuperellipseShape(
        borderRadius: BorderRadius.circular(28.0),
      ), // SuperellipseShape
      child: Container(
        width: 35.0,
        height: 35.0,
        child: Center(
          child: icon,
        ),
      ), // Container
    ); // Material
  }
}
