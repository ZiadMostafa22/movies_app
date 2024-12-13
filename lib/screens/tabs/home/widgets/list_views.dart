import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/my_app.dart';

class ListViews extends StatelessWidget {
  ListViews({super.key, required this.imagePath});

  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: ColorsManager.grey,
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
