import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher/courses/widgets/course_carousel_single_widget.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CourseCarousel extends StatefulWidget {
  CourseCarousel({super.key});

  @override
  State<CourseCarousel> createState() => _CourseCarouselState();
}

class _CourseCarouselState extends State<CourseCarousel> {
  CarouselController carouselController = CarouselController();
  int _currentIndex = 0;

  List<SingleCarouselWidget> items = const [
    SingleCarouselWidget(
        // carouselController: carouselController,
        imageUrl:
            'https://www.vtnetzwelt.com/wp-content/uploads/2019/03/flutter-app-development.jpg',
        courseTitle: 'App Development With Flutter',
        type: 'App Development',
        instructorImagePath: 'assets/images/Cipherschools_icon.png',
        instructorName: 'AdityaThakur',
        method: 'Watch'),
    SingleCarouselWidget(
        // carouselController: carouselController,
        imageUrl:
            'https://learnenglish.britishcouncil.org/sites/podcasts/files/2021-09/GettyImages-1072206958_2.jpg',
        courseTitle: 'FREE Mock IELTS/TOEFL',
        type: 'Assessment test',
        instructorImagePath: 'assets/images/Cipherschools_icon.png',
        instructorName: 'Languify',
        method: 'Try now'),
    SingleCarouselWidget(
        // carouselController: carouselController,
        imageUrl:
            'https://leverageedu.com/blog/wp-content/uploads/2019/11/Short-Term-Courses-after-BTech.jpg',
        courseTitle: 'Full-stack Development using MERN',
        type: 'Web Development',
        instructorImagePath: 'assets/images/Cipherschools_icon.png',
        instructorName: 'CipherSchools',
        method: 'Watch'),
    SingleCarouselWidget(
        // carouselController: carouselController,
        imageUrl:
            'https://files.realpython.com/media/Newbie_Watermarked.a9319218252a.jpg',
        courseTitle: 'Python & Django For Beginners',
        type: 'Programming',
        instructorImagePath: 'assets/images/Cipherschools_icon.png',
        instructorName: 'CipherSchools',
        method: 'Try now'),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 230,
            aspectRatio: 2.0,
            viewportFraction: 1.0,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          disableGesture: true,
          carouselController: carouselController,
          items: items,
        ),
        Positioned(
          left: 1,
          top: 90,
          child: IconButton(
            onPressed: () {
              carouselController.previousPage(
                  duration: const Duration(microseconds: 200));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          right: 1,
          top: 90,
          child: IconButton(
            onPressed: () {
              carouselController.nextPage(
                  duration: const Duration(microseconds: 200));
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 170,
          child: DotsIndicator(
            dotsCount: items.length,
            axis: Axis.horizontal,
            position: _currentIndex * 1.0,
            decorator: DotsDecorator(
              activeSize: const Size.fromRadius(3),
              activeColor: Theme.of(context).primaryColor,
              size: const Size.fromRadius(3),
              color: Colors.grey,
              spacing: const EdgeInsets.all(5),
            ),
            onTap: (position) {
              carouselController.jumpToPage(position.toInt());
            },
          ),
        )
      ],
    );
  }
}
