// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:cipher/courses/widgets/course_card.dart';

import 'dropDown_widget.dart';

class DifferentSection extends StatefulWidget {
  const DifferentSection({
    Key? key,
    required this.sectionName,
    required this.list,
    required this.isWidgetAvailable,
  }) : super(key: key);

  final String sectionName;
  final List<CourseCard> list;
  final bool isWidgetAvailable;
  @override
  State<DifferentSection> createState() => _DifferentSectionState();
}

class _DifferentSectionState extends State<DifferentSection> {
  int _currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.sectionName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              if (widget.isWidgetAvailable) const CustomDropDown(),
            ],
          ),
        ),
        Stack(
          children: [
            CarouselSlider(
              items: widget.list,
              options: CarouselOptions(
                enableInfiniteScroll: false,
                aspectRatio: 220 / 150,
                viewportFraction: 0.5,
                initialPage: 0,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
