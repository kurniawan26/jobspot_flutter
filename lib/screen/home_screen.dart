import 'package:flutter/material.dart';
import 'package:jobspot_flutter/widget/banner_widget.dart';
import 'package:jobspot_flutter/widget/findjob_widget.dart';
import 'package:jobspot_flutter/widget/header_widget.dart';
import 'package:jobspot_flutter/widget/recentjob_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

  List<NavigationItem> navItems = const [
    NavigationItem('Home', Icons.home),
    NavigationItem('Job', Icons.work),
    NavigationItem('Profile', Icons.person),
    NavigationItem('Setting', Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const HomePage();
        break;
      case 1:
        page = const Placeholder();
        break;
      case 2:
        page = const Placeholder();
        break;
      case 3:
        page = const Placeholder();
        break;
      default:
        throw UnimplementedError('No Widget for $selectedIndex');
    }

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
        body: SafeArea(
          child: page,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: navItems.map((item) {
                var index = navItems.indexOf(item);
                return IconButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      index == selectedIndex
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                    iconSize: MaterialStateProperty.all(30),
                  ),
                  onPressed: () => onItemTapped(index),
                  icon: Icon(
                    item.icon,
                  ),
                );
              }).toList(),
            )));
  }
}

class NavigationItem {
  final String title;
  final IconData icon;

  const NavigationItem(this.title, this.icon);
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFF9F9F9),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              SizedBox(
                height: 30,
              ),
              BannerWidget(),
              SizedBox(
                height: 30,
              ),
              FindJobWidget(),
              SizedBox(
                height: 30,
              ),
              RecentJobWidget()
            ],
          ),
        ),
      ),
    );
  }
}
