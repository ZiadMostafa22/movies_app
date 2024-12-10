import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Image.asset(AssetsManager.dora),

        // Positioned film image
        Positioned(
          top: 80.h,
          width: 129.w,
          height: 199.h,
          left: 20,
          child: Image.asset(AssetsManager.filmImage),
        ),

        // Positioned container and text on top of the container
        Positioned(
          top: 210.h,
          child: Column(
            children: [
              Container(
                width: 412.w,
                height: 100.h,
                color: Colors.white10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ Text(
                    'Dora and the lost city of gold',
                    style: TextStyle(color: Colors.white),
                  ),
            ]
                ),

              ),
            ],
          ),
        ),
      ],
    );
  }
}
