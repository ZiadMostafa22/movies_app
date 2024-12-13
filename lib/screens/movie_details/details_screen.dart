import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/screens/movie_details/widgets/genre.dart';
import 'package:movies_app/screens/tabs/home/widgets/recommended_widget.dart';

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

          Column(
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

          SizedBox(height: 20),

          Container(
            height: 300.h,
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
                    )),
                Positioned(
                    top: 175.h,
                    left: 205.w,
                    child:Text('7.7' , style: TextStyle(color: Colors.white , fontSize: 30),) ),
              ],
            ),
          ),
          Positioned(
            top: 170.h,
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
