import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: ColorsManager.lightBlack
    ),
  ),
    );
  }
}
