
import 'package:flutter/material.dart';

class SingleCarouselWidget extends StatelessWidget {
  const SingleCarouselWidget(
      {super.key,
      required this.courseTitle,
      required this.type,
      required this.instructorImagePath,
      required this.instructorName,
      required this.imageUrl,
      // required this.carouselController,
      required this.method});
  final String courseTitle;
  final String type;
  final String imageUrl;
  final String instructorImagePath;
  final String instructorName;
  final String method;
  // final CarouselController carouselController;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 230,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 230,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Colors.black54,
                Colors.black12,
              ])),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(40, 40, 100, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                courseTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Chip(
                padding: const EdgeInsets.all(0),
                backgroundColor: const Color(0xff3D455A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                label: Text(
                  type,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/images/Cipherschools_icon.png'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    instructorName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.fromLTRB(25, 0, 25, 0)),
                      backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).primaryColor),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  child: Text(
                    method,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}
