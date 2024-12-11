import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/screens/tabs/home/home.dart';
import 'package:movies_app/screens/tabs/search/search.dart';
import 'package:movies_app/screens/tabs/videos/videos.dart';
import 'package:movies_app/screens/tabs/watchlist/watchlist.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> tabs = [
    Home(),
    Search(),
    Videos(),
    WatchList(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: tabs[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        currentIndex: currentIndex,
        onTap: (index) {
           currentIndex = index;
           setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsManager.navColor,
        selectedItemColor: ColorsManager.yellow,
        unselectedItemColor: Colors.white,
        enableFeedback: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'SEARCH'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video),
              label: 'VIDEOS'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'WATCHLIST'
          ),
        ],
      ),
    );
  }
}

