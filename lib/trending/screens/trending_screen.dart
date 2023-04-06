import 'package:flutter/material.dart';


class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Text(
          "Trending Screen",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}