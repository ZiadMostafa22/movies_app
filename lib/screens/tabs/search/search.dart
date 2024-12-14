import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/colors_manager.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightBlack,
      appBar: AppBar(
        backgroundColor: ColorsManager.lightBlack,
        title: TextField(
          style: TextStyle(color: Colors.white),
          onChanged: (value) {
            setState(() {
              query = value; // Update the query state
            });
          },
          decoration: InputDecoration(
            hintText: 'Search movies...',
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)), // Optional: to change hint text color
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white), // White enabled border
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white), // White focused border
              borderRadius: BorderRadius.circular(30),
            ),
            filled: true,
            fillColor: ColorsManager.lightBlack.withOpacity(0.5),
          ),
        ),
      ),
      body: Column(
        children: [
          // Show the search query text only if the query is not empty
          if (query.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Searching for: $query',
                style: TextStyle(fontSize: 16.sp, color: Colors.white),
              ),
            ),
          // If query is empty, show the "No movies found" message
          if (query.isEmpty)
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.local_movies, size: 100, color: Colors.grey),
                    Text(
                      'No movies found',
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
