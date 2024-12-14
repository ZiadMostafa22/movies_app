import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/colors_manager.dart';
import 'package:movies_app/screens/tabs/watchlist/widgets/watch_list_widget.dart';

class WatchList extends StatelessWidget {
  const WatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 96.h),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Text(
                  'Watchlist',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
          ),
          WatchListWidget(),
          WatchListWidget(),
          WatchListWidget(),
          WatchListWidget(),
          WatchListWidget(),
          WatchListWidget(),
          WatchListWidget(),
          WatchListWidget(),
        ],
      ),
    );
  }
}
