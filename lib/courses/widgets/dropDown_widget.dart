import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String currentValue = "Popular";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        // isDense: true,
        dropdownColor: Theme.of(context).appBarTheme.backgroundColor,
        style: TextStyle(
            color: Theme.of(context).colorScheme.secondary, fontSize: 16),
        value: currentValue,
        items: const [
          DropdownMenuItem(
            value: "Popular",
            child: Text(
              "Popular",
            ),
          ),
          DropdownMenuItem(
            value: "Latest",
            child: Text("Latest"),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
        elevation: 5,
        onChanged: (value) {
          setState(() {
            currentValue = value!;
          });
        },
      ),
    );
  }
}
