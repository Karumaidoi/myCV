import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mycv/pages/home_page.dart';

import '../const/app_colors.dart';

class ExpScreen extends StatelessWidget {
  const ExpScreen({Key? key}) : super(key: key);

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
                icon: const Icon(Feather.activity),
                color: AppColors.emberColor,
              ),
              title: const Text(
                'Work',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              subtitle: const Text(
                'Tasks at hand with the right tool. Experience',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Overview',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListDat(
              icon: const Icon(Feather.briefcase),
              company: 'Bestypie Inc',
              status: 'Lead Front-end Engineer',
              duration: '2 Years.  FullTime',
              color: AppColors.webColor,
            ),
          ),
          Card(
            child: ListDat(
              company: 'Kiddle Inc',
              status: 'Flutter Developer',
              duration: '1 Year.  Full Time',
              color: AppColors.softColor, icon: const Icon(Feather.briefcase),
            ),
          ),
          Card(
            child: ListDat(
              icon: const Icon(Feather.briefcase),
              company: 'Bestypie Inc',
              status: 'Flutter Developer',
              duration: '1/2 Year.  PartTime',
              color: AppColors.emberColor,
            ),
          ),
          Card(
            child: ListDat(
              icon: const Icon(Feather.briefcase),
              company: 'Basemart Enterprise',
              status: 'Flutter Developer',
              duration: '1 Year.  Full Time',
              color: AppColors.miamiColor,
            ),
          )
        ]),
      ),
    );
  }
}

class ListDat extends StatefulWidget {
  final String company;
  final String status;
  final String duration;
  final Color color;
  final Icon icon;
  ListDat({
    Key? key,
    required this.company,
    required this.status,
    required this.duration,
    required this.color, required this.icon,
  }) : super(key: key);

  @override
  State<ListDat> createState() => _ListDatState();
}

class _ListDatState extends State<ListDat> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: SuperellipseDemo(
        icon: widget.icon,
        color: widget.color,
      ),
      title: Text(
        widget.company,
        style: const TextStyle(fontSize: 13),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.status,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.duration,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
