import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/data/model/upcoming_response/upcoming.dart';

class ListViews extends StatelessWidget {
  const ListViews({
    super.key,
    required this.imagePath,

  });


  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.r),
        color: ColorsManager.grey,
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          // Display image from network or fallback to local asset
          Image.network(
            imagePath,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            errorBuilder: (context, error, stackTrace) => Image.asset(
              AssetsManager.narcos,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          // Bookmark icon
          Positioned(
            top: .1.h,
            left: -1.w,
            child: Image.asset(
              AssetsManager.bookmark,
              height: 36.h,
              width: 30.w,
            ),
          ),
          // Add icon
          Positioned(
            top: 7.h,
            left: 5.w,
            child: Image.asset(
              AssetsManager.add,
              height: 15.h,
              width: 20.w,
            ),
          ),
        ],
      ),
    );
  }
}
