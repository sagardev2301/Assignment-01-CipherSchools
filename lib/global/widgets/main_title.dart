import 'package:flutter/material.dart';

Widget mainTitle = Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    SizedBox(
        width: 35,
        height: 35,
        child: Image.asset("assets/images/Cipherschools_icon.png")),
    const SizedBox(
      width: 5,
    ),
    const Text(
      "CipherSchools",
      style: TextStyle(fontSize: 20, color: Color(0xff222831)),
    )
  ],
);
