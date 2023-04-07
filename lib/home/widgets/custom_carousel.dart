import 'package:cipher/home/widgets/custom_carousel_single_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      CarouselSlider(
        options: CarouselOptions(
          height: 240,
          aspectRatio: 2.0,
          viewportFraction: 0.50,
          initialPage: 0,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.4,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          scrollDirection: Axis.horizontal,
          scrollPhysics: const ClampingScrollPhysics(),
        ),
        disableGesture: true,
        items: const [
          CarouselSinglePageWidget(
              iconData: Icons.rotate_left_outlined,
              title: "Earn CipherPoints",
              description:
                  "Earn exclusive rewards by developing your skills with us!"),
          CarouselSinglePageWidget(
              iconData: Icons.bookmark_sharp,
              title: "Q-rated Content",
              description: "Unlock quality content with our Q-rated content!"),
          CarouselSinglePageWidget(
            iconData: Icons.book_outlined,
            title: "Projects",
            description:
                "Get the hands-on experience with real-time projects guided by expert mentors!",
          ),
          CarouselSinglePageWidget(
            iconData: Icons.person,
            title: "Mentors",
            description:
                "Start learning from the mentors coming from giant corporations like Microsoft, Google, Amazon, Paypal, etc!",
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 195,
            height: 200,
            decoration: const BoxDecoration(
                gradient: RadialGradient(center: Alignment.centerLeft, colors: [
              Colors.white,
              Colors.white54,
              Colors.white30,
              Colors.transparent,
            ])),
          ),
          Container(
            width: 195,
            height: 200,
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    center: Alignment.centerRight,
                    colors: [
                  Colors.white,
                  Colors.white54,
                  Colors.white30,
                  Colors.transparent
                ])),
          )
        ],
      )
    ]);
  }
}
