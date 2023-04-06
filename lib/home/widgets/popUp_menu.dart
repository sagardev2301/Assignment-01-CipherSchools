import 'package:flutter/material.dart';
import 'package:app_popup_menu/app_popup_menu.dart';

class CustomPopUpMenu extends StatefulWidget {
  const CustomPopUpMenu({super.key});

  @override
  State<CustomPopUpMenu> createState() => _CustomPopUpMenuState();
}

class _CustomPopUpMenuState extends State<CustomPopUpMenu> {
  IconData iconData = Icons.menu_rounded;
  @override
  Widget build(BuildContext context) {
    return AppPopupMenu(
      offset: const Offset(65, 65),
      icon: Icon(
        iconData,
        color: Theme.of(context).colorScheme.tertiary,
        size: 30,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      // items: const [
      //   "Home",
      //   "Creator Access",
      //   "Live Reviews",
      //   "Community",
      //   "Explore Courses",
      //   "SignIn"
      // ],
      color: Theme.of(context).appBarTheme.backgroundColor,
      menuItems: [
        PopupMenuItem(
          child: Text(
            "Home",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          child: Text(
            "Creator Access",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          child: Text(
            "Live Reviews",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          child: Text(
            "Community",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          child: Text(
            "Explore Courses",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          child: Text(
            "SignIn",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
