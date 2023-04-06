import 'dart:ffi';

import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

class CountSection extends StatelessWidget {
  CountSection({super.key});
  final List<Map<String, dynamic>> countList = [
    {"cnt": 15, "unit": "K", "title": "Students"},
    {"cnt": 10, "unit": "K", "title": "Certificates Delivered"},
    {"cnt": 450, "unit": "K", "title": "Streamed Minutes"},
    {"cnt": 12, "unit": "TB", "title": "Content Streamed in last 60 days"},
    {"cnt": 50, "unit": "", "title": "Creators"},
    {"cnt": 110, "unit": "", "title": "Programs available"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 300,
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      width: double.infinity,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisExtent: 80),
        itemCount: countList.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 35,
            width: 150,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Countup(
                        begin: 0,
                        end: countList[index]['cnt'] * 1.0,
                        duration: const Duration(seconds: 3),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        "${countList[index]['unit']}+",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    countList[index]['title'],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
