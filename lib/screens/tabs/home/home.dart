import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/screens/tabs/home/widgets/recommended_widget.dart';
import 'package:movies_app/screens/tabs/home/widgets/releases_widget.dart';
import 'package:movies_app/screens/tabs/search/search.dart';
import 'package:movies_app/screens/tabs/videos/videos.dart';
import 'package:movies_app/screens/tabs/watchlist/watchlist.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Stack to overlay the film image above the Dora image
          Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(AssetsManager.dora),
              ),
              Positioned(
                left: 10.w,
                top: 80.h,
                child: Image.asset(
                  AssetsManager.filmImage,
                  width: 150.w,
                  height: 150.h,
                ),
              ),
            ],
          ),
          // Grey Container with text
          Container(
            color: Colors.white12,
            width: 412.w,
            height: 100.h,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dora and the lost city of gold',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  '2019  PG-13  2h 7m',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          // New Releases Section
          Container(
            color: ColorsManager.grey,
            height: 210.h, // Fixed height for New Releases
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'New Releases',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                // Direct ListView without Expanded
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ReleasesWidget(); // Your custom widget for the list item
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h), // Space between the containers

          // Recommended Section
          Container(
            color: ColorsManager.grey,
            height: 210.h, // Fixed height for Recommended
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                // Direct ListView without Expanded
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RecommendedWidget(); // Your custom widget for the list item
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   iconSize: 35,
      //   //currentIndex: selectedindex,
      //   onTap: (index) {
      //     // selectedindex = index;
      //     // setState(() {});
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: ColorsManager.navColor,
      //   selectedItemColor: ColorsManager.yellow,
      //   unselectedItemColor: Colors.white,
      //   enableFeedback: false,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         label: 'Search'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.ondemand_video),
      //         label: 'Videos'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.book),
      //         label: 'Book'
      //     ),
      //   ],
      // ),
    );
  }
}
