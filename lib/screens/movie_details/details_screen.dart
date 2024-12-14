import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/screens/movie_details/widgets/genre.dart';
import 'package:movies_app/screens/tabs/home/widgets/recommended_widget.dart';
import 'package:movies_app/screens/tabs/home/widgets/list_views.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView to handle overflow
        child: Column(
          children: [
            // Image with Play Icon and Watch Container positioned
            Stack(
              children: [
                // Movie Image
                Image.asset(
                  AssetsManager.dora,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                // Play Icon centered
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 80.w,
                    ),
                  ),
                ),
              ],
            ),

            // Title Row
            Container(
              color: ColorsManager.lightBlack,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Dora and the lost city of gold',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          //  const SizedBox(height: 5),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '2019  PG-13  2h 7m',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            Container(
              height: 250.h,
              width: double.infinity,
              color: ColorsManager.lightBlack,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 20,
                    ),
                    child: Image.asset(
                      AssetsManager.filmImage,
                      height: 199.h,
                      width: 129.w,
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 168.w,
                    child: Genre(),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 242.w,
                    child: Genre(),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 316.w,
                    child: Genre(),
                  ),
                  Positioned(
                    top: 70.h,
                    left: 168.w,
                    right: 1.w, // Added padding from the right edge
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 4, // Limit the number of lines
                        overflow: TextOverflow
                            .ellipsis, // Truncate text if it overflows
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180.h,
                    left: 170.w,
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ),
                  Positioned(
                    top: 175.h,
                    left: 205.w,
                    child: Text(
                      '7.7',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            // Wrap the list view in a container and add flexible layout
            Container(
              width: double.infinity,
              height: 220.h,
              color: ColorsManager.grey,
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More Like This',
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
          ],
        ),
      ),
    );
  }
}
