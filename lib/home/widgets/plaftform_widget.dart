import 'package:flutter/material.dart';

class PlaftformWidget extends StatelessWidget {
  const PlaftformWidget(
      {super.key,
      required this.shortTitle,
      required this.title,
      required this.person,
      required this.iconData,
      required this.imageUrl});
  final String shortTitle;
  final String title;
  final String person;
  final IconData iconData;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black54,
                      Colors.black12,
                    ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  shortTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(
                            BorderSide(color: Colors.white, width: 1)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    child: Row(
                      children: [
                        Text(
                          "For $person",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          iconData,
                          size: 16,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
