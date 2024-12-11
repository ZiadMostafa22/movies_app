import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/my_app.dart';

class ReleasesWidget extends StatelessWidget {
   ReleasesWidget({super.key ,});



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(AssetsManager.narcos , height: 200.h, width: 100.w,),
      ),
    );
  }
}
