import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/core/utils/routes_manager.dart';
import 'package:movies_app/screens/tabs/home/widgets/list_views.dart';

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
          // Stack to overlay Dora image, container with text, the film image, and the play icon
          Stack(
            clipBehavior: Clip.none,  // Prevent clipping
            children: [
              // Dora image at the bottom
              Align(
                alignment: Alignment.topCenter,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(RoutesManager.detailsScreen);
                  },
                  child: Image.asset(AssetsManager.dora),
                ),
              ),
              // Container with text positioned below the Dora image
              Positioned(
                left: 0,
                right: 0,
                top: 190.h,  // Adjust the top positioning to align with the Dora image
                child: Container(
                  color: ColorsManager.lightBlack,
                  height: 100.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 70.w,),
                            Text(
                              'Dora and the lost city of gold',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '2019  PG-13  2h 7m',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: ColorsManager.titleGrey),
                      ),
                    ],
                  ),
                ),
              ),

              // Positioned Play Icon Circle above the Dora image
              Positioned(
                top: 75.h,  // Positioning the play icon above the Dora image
                left: 0,  // Left alignment to center using ScreenUtil
                right: 0, // Right alignment to center horizontally
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(RoutesManager.detailsScreen);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                    ),
                    padding: EdgeInsets.all(10.w),  // Padding for the icon size
                    child: Icon(
                      Icons.play_circle,  // Play circle icon
                      size: 80.w,  // Icon size
                      color: Colors.white,  // Icon color to make it white
                    ),
                  ),
                ),
              ),


              Positioned(
                left: 5.w,
                top: 90.h,
                child: Image.asset(
                  AssetsManager.filmImage,
                  width: 150.w,
                  height: 150.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h),

          Expanded(
            child: Container(
              width: double.infinity,
              height: 220.h,
              color: ColorsManager.grey,
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Releases',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 150.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: ListViews(
                          imagePath: AssetsManager.narcos,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h), // Space between the containers

          // Recommended Section
          Expanded(
            child: Container(
              width: double.infinity,
              height: 190.h,
              color: ColorsManager.grey,
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 150.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: ListViews(
                          imagePath: AssetsManager.deadpool,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
