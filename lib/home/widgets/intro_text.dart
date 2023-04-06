import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to ",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "the ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
                fontSize: 35,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Future ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
                fontSize: 35,
              ),
            ),
            Text(
              "of Learning!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Start Learning by best creators for",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 5,
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText("absolutely Free",
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor),
                speed: const Duration(milliseconds: 200))
          ],
          repeatForever: true,
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(75, 0, 75, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 30,
                      width: 30,
                      child:
                          Image.asset("assets/images/Cipherschools_icon.png")),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        "50+",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        "Mentors",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  )
                ],
              ),
              Text(
                "|",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.grey[500],
                ),
              ),
              Column(
                children: [
                  Text(
                    "4.8/5",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 12,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Theme.of(context).primaryColor,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Ratings",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(90, 0, 90, 0),
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                backgroundColor:
                    MaterialStatePropertyAll(Theme.of(context).primaryColor)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Start Learning Now",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    CupertinoIcons.arrow_right,
                    size: 15,
                    color: Colors.white,
                  )
                ]),
          ),
        )
      ],
    );
  }
}
