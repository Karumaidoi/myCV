import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../const/app_colors.dart';
import 'home_page.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18,),
        child: ListView(children: [
          const SizedBox(height: 12,),
          Card(
                child: ListTile(
                  leading: SuperellipseDemo(
                    icon: const Icon(Entypo.tools), color: AppColors.whatsAppColor,
                  ),
                  title: const Text(
                    'Tech tools',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  subtitle: const Text(
                    'My right tools for my task at hand.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              const Text(
              'Garage',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            WrapTools(),
        ]),
      ),
    );
  }
}

class WrapTools extends StatefulWidget {
  WrapTools({Key? key}) : super(key: key);

  @override
  State<WrapTools> createState() => _WrapToolsState();
}

class _WrapToolsState extends State<WrapTools> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: const [
        Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/ps.png'),),
          label: Text(
                      'Adobe Photoshop',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
        Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/xd.png'),),
          label: Text(
                      'Adobe Xd',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
        Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/flutter.png'),),
          label: Text(
                      'Flutter',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
                    Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/dart.png'),),
          label: Text(
                      'Dart',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
                    Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/HTML.png'),),
          label: Text(
                      'HTML/CSS',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
          Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/r.jpg'),),
          label: Text(
                      'R',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
        Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/js.png'),),
          label: Text(
                      'JavaScript',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
        Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/Node.jpg'),),
          label: Text(
                      'NodeJS',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
        Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/gcp.png'),),
          label: Text(
                      'Google Platform Cloud(GCP)',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
        Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/rest.png'),),
          label: Text(
                      'REST / Restful API',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
                    Chip(
          avatar: CircleAvatar(
            backgroundImage: AssetImage('assets/angular.png'),
          ),
          label: Text(
                      'Angular',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),),
                    Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage('assets/mongo.png'),),
          label: Text(
                      'MongoDB',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),)
      ],
    );
  }
}