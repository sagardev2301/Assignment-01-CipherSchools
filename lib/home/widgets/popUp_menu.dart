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
      color: Theme.of(context).appBarTheme.backgroundColor,
      menuItems: [
        PopupMenuItem(
          height: 30,
          child: Text(
            "Home",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          height: 30,
          child: Text(
            "Creator Access",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          height: 30,
          child: Text(
            "Live Reviews",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          height: 30,
          child: Text(
            "Community",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          height: 30,
          child: Text(
            "Explore Courses",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PopupMenuItem(
          height: 30,
          child: Text(
            "SignIn",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
