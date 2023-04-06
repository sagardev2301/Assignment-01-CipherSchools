import 'package:cipher/courses/widgets/course_popup_menu.dart';
import 'package:cipher/global/widgets/theme.dart';
import 'package:cipher/home/widgets/popUp_menu.dart';
import 'package:cipher/profile/screens/profile_screen.dart';
import 'package:cipher/trending/screens/trending_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'global/providers/theme_provider.dart';
import 'home/screen/home_screen.dart';
import 'package:cipher/courses/screen/course_screen.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

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
          create: (context) => CustomThemeNotifier(),
        )
      ],
      child: Consumer<CustomThemeNotifier>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Assignment',
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: value.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            home: const TabBarScreen(),
          );
        },
      ),
    );
  }
}

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

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
                  width: 32,
                  height: 32,
                  child: Image.asset("assets/images/Cipherschools_icon.png")),
              const SizedBox(
                width: 5,
              ),
              Text(
                "CipherSchools",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 18),
              )
            ],
          ),
          elevation: 2,
          actions: [
            if (tabController.index == 0) const CustomPopUpMenu(),
            if (tabController.index != 0) const CoursePopUpMenu(),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const HomeScreen(),
          CourseScreen(),
          const TrendingScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28, bottom: 25),
        child: BottomBarFloating(
          borderRadius: BorderRadius.circular(25),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor!,
          color: Theme.of(context).colorScheme.tertiary,
          colorSelected: Theme.of(context).primaryColor,
          iconSize: 15,
          titleStyle: const TextStyle(fontSize: 12),
          indexSelected: tabController.index,
          animated: false,
          onTap: (index) {
            setState(() {
              tabController.index = index;
            });
          },
          items: const [
            TabItem(title: "Home", icon: Icons.home),
            TabItem(title: "Courses", icon: Icons.book),
            TabItem(title: "Trending", icon: Icons.trending_up),
            TabItem(title: "Profile", icon: Icons.person),
          ],
        ),
      ),
    );
  }
}
