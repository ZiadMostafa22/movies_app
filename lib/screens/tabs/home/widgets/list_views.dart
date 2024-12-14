import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

class ListViews extends StatelessWidget {
  ListViews({super.key, required this.imagePath});

  String imagePath;

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

          Image.asset(
            imagePath,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),

          Positioned(
            top: .1.h,
            left: -1.w,
            child: Image.asset(
              AssetsManager.bookmark,
              height: 36.h,
              width: 30.w,
            ),
          ),

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
