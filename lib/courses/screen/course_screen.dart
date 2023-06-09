import 'package:cipher/courses/widgets/course_card.dart';
import 'package:flutter/material.dart';
import '../widgets/course_carousel.dart';
import '../widgets/different_section.dart';

class CourseScreen extends StatelessWidget {
  CourseScreen({super.key});
  List<Map<String, dynamic>> courseDetail = [
    {
      "imageUrl": 'assets/images/flutter-app-development.jpg',
      "label": 'App Development',
      "courseName": 'App Development With Flutter',
      "description": '',
      "instructorName": 'CipherSchools',
      "noOfVideos": 10,
      "contentTime": 25.5,
    },
    {
      "imageUrl": 'assets/images/short_course.jpg',
      "label": 'Web Development',
      "courseName": 'Full-stack Development using MERN',
      "description": '',
      "instructorName": 'CipherSchools',
      "noOfVideos": 30,
      "contentTime": 45.7,
    },
    {
      "imageUrl": 'assets/images/course.jpg',
      "label": 'Languify',
      "courseName": 'FREE IELTS/TOEFL Mock Assessment',
      "description": 'AI genereated feedback and scores',
      "instructorName": 'Languify',
      "noOfVideos": 0,
      "contentTime": 0,
    },
    {
      "imageUrl": 'assets/images/python.webp',
      "label": 'Programming',
      "courseName": 'Python & Django For Beginners',
      "description": '',
      "instructorName": 'CipherSchools',
      "noOfVideos": 15,
      "contentTime": 5.7,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CourseCarousel(),
            DifferentSection(
                isWidgetAvailable: true,
                list: courseDetail.map((e) {
                  return CourseCard(
                      imagePath: e['imageUrl'],
                      label: e['label'],
                      courseName: e['courseName'],
                      description: e['description'],
                      instructorName: e['instructorName'],
                      noOfVideos: e['noOfVideos'],
                      contentTime: e['contentTime'] * 1.0);
                }).toList(),
                sectionName: "Recommended Videos"),
            DifferentSection(
                isWidgetAvailable: false,
                list: courseDetail.map((e) {
                  return CourseCard(
                      imagePath: e['imageUrl'],
                      label: e['label'],
                      courseName: e['courseName'],
                      description: e['description'],
                      instructorName: e['instructorName'],
                      noOfVideos: e['noOfVideos'],
                      contentTime: e['contentTime'] * 1.0);
                }).toList(),
                sectionName: "Latest Videos"),
          ],
        ),
      ),
    );
  }
}
