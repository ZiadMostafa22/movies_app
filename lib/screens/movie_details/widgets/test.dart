import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/screens/movie_details/widgets/genre.dart';

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
      body: Column(
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

          const SizedBox(height: 5),

          // Description
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Text(
              '2019  PG-13  2h 7m',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          const SizedBox(height: 15),


          Container(
            height: 300.h,
            width: double.infinity,
            color: ColorsManager.lightBlack,
            child: Stack(  // Use Stack to position containers
              children: [
                // Movie Image
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    AssetsManager.filmImage,
                    height: 199.h,
                    width: 129.w,
                  ),
                ),
                // First Positioned Container
                Positioned(
                    top: 10,
                    left: 162,
                    child: Genre()
                ),
                // Second Positioned Container
                Positioned(
                  top: 10, // Adjust the position for the second container
                  left: 236, // Adjust to place it beside the first container
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 65.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: ColorsManager.lightgGrey,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Comedy',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                // Third Positioned Container
                Positioned(
                  top: 10, // Adjust the position for the third container
                  left: 310, // Adjust to place it beside the second container
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 65.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: ColorsManager.lightgGrey,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Adventure',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 15.w),
        ],
      ),
    );
  }
}
