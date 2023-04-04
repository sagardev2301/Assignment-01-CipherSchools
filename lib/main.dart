import 'package:cipher/global/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'global/providers/theme_provider.dart';
import 'home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CustomThemeNotifier(),)
      ],
      child: Consumer<CustomThemeNotifier>(
        builder: (context, value, child) {
          return MaterialApp(
          title: 'Flutter Assignment',
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: value.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          home: const HomeScreen(),
        );
        },
      ),
    );
  }
}
