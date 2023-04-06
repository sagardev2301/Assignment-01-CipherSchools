import 'package:app_popup_menu/app_popup_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../global/providers/theme_provider.dart';

class CoursePopUpMenu extends StatelessWidget {
  const CoursePopUpMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppPopupMenu(
                    offset: const Offset(50, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    menuItems: [
                      PopupMenuItem(
                        child: Text(
                          "App Development",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Web Development",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Game Development",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "DataStructures",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Programming",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Machine Learning",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Data Science",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Others",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    child: Row(
                      children: [
                        Icon(
                          Icons.manage_search_outlined,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 14,
                        ),
                        Text(
                          "Browse",
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Switch(
                    splashRadius: 2,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    value:
                        Provider.of<CustomThemeNotifier>(context, listen: false)
                            .isDarkTheme,
                    onChanged: (value) {
                      Provider.of<CustomThemeNotifier>(context, listen: false)
                          .updateTheme(value);
                    },
                    // onChanged: onChanged
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications_none,
                        size: 20,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        size: 20,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                  
                ],
              );
  }
}