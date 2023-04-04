import 'package:flutter/material.dart';

class CarouselSinglePageWidget extends StatelessWidget {
  const CarouselSinglePageWidget(
      {required this.iconData,
      required this.title,
      required this.description,
      super.key});
  final IconData iconData;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 15),
      decoration: BoxDecoration(
        color: const Color(0xff353a42),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                maxRadius: 25,
                child: Icon(
                  iconData,
                  color: Theme.of(context).primaryColor,
                  size: 25,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  RotatedBox(
                    quarterTurns: 45,
                    child: Icon(
                      Icons.bookmark,
                      size: 60,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const Text(
                    " Free",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey[200],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                description,
                softWrap: true,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[200],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
