import 'package:cipher/global/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 35,
                  height: 35,
                  child: Image.asset("assets/images/Cipherschools_icon.png")),
              const SizedBox(
                width: 5,
              ),
              Text(
                "CipherSchools",
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          elevation: 2,
          actions: [
            Switch(
              value: Provider.of<CustomThemeNotifier>(context, listen: false)
                  .isDarkTheme,
              onChanged: (value) {
                Provider.of<CustomThemeNotifier>(context, listen: false)
                    .updateTheme(value);
              },
              // onChanged: onChanged
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                size: 15,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 15,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Center(child: Text("Courses")),
      ),
    );
  }
}
