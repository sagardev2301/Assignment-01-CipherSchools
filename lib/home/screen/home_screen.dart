import 'package:cipher/home/widgets/count_section.dart';
import 'package:cipher/home/widgets/custom_carousel.dart';
import 'package:cipher/home/widgets/intro_text.dart';
import 'package:cipher/home/widgets/plaftform_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const IntroText(),
            const SizedBox(
              height: 30,
            ),
            const CustomCarousel(),
            const SizedBox(
              height: 30,
            ),
            CountSection(),
            Column(
              children: const [
                PlaftformWidget(
                  shortTitle:
                      'Unlock your learning potential with CipherSchools',
                  title: 'Best platform for the students',
                  person: 'Students',
                  imagePath: 'assets/images/for_student.webp',
                  iconData: Icons.school_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                PlaftformWidget(
                  shortTitle:
                      'Empowering students to open their minds to utmost knowledge',
                  title: 'Be the mentor you never had',
                  person: 'Creators',
                  imagePath: 'assets/images/for_creator.webp',
                  iconData: Icons.handyman_outlined,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
