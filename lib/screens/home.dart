import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/assets_manager.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/my_app.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return Stack(
     children: [
       Column(
         children: [
           Image.asset(AssetsManager.dora),
         ],
       ),
       Column(
         children: [
           Container(
             width: 200.w,
             height: 100.h,
             color: Colors.white12,

           )
         ],
       )
     ],
   );
  }
}



// Column(
// children: [
// Container(
// width: 412.w,
// height: 100.h,
// color: Colors.white12,
// ),
// Row(
// children: [
// Image.asset(AssetsManager.filmImage),
// ],
// )
// ],
// )
// ],
