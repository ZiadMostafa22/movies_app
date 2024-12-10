import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/core/utils/routes_manager.dart';
import 'package:movies_app/my_app.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacementNamed(context, RoutesManager.home);
          },
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: ColorsManager.black,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 168.w, // Set the width
              height: 187.h, // Set the height
              decoration: BoxDecoration(
                color: ColorsManager.black,
                image: DecorationImage(
                  image: AssetImage(AssetsManager.splash),
                  fit: BoxFit.fill, // Adjust this if needed
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

}