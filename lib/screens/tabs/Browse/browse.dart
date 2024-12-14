import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

import 'categoryItem.dart';


class Browse extends StatelessWidget {
  const Browse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBlack,
      appBar: AppBar(
        backgroundColor: ColorsManager.lightBlack,
        title: Text(
          'Browse Category',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(7),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20, // Increased the number of items
        itemBuilder: (ctx, i) => CategoryItem(),
      ),
    );
  }
}