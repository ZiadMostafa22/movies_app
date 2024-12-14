import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/assets_manager.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Stack(
        alignment: Alignment.center, // Align the title at the center
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AssetsManager.categoryItem,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Text(
              'Action',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}