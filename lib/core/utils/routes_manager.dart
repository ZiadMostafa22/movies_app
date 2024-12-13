import 'package:flutter/material.dart';
import 'package:movies_app/screens/homescreen.dart';
import 'package:movies_app/screens/movie_details/details_screen.dart';
import 'package:movies_app/screens/tabs/home/home.dart';
import 'package:movies_app/screens/tabs/search/search.dart';
import 'package:movies_app/screens/tabs/videos/videos.dart';
import 'package:movies_app/screens/tabs/watchlist/watchlist.dart';
import 'package:movies_app/splash/splash.dart';

class RoutesManager{

  static const String splash = '/splash';
  static const String home = '/home';
  static const String search = '/search';
  static const String videos = '/videos';
  static const String watchList = '/watchList';
  static const String homeScreen = '/homeScreen';
  static const String detailsScreen = '/details';


  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
        );

      case home:
        return MaterialPageRoute(
          builder: (context) =>  Home(),
        );

      case search:
        return MaterialPageRoute(
          builder: (context) =>  Search(),
        );

      case videos:
        return MaterialPageRoute(
          builder: (context) =>  Videos(),
        );

      case watchList:
        return MaterialPageRoute(
          builder: (context) =>  WatchList(),
        );

      case homeScreen:
        return MaterialPageRoute(
          builder: (context) =>  Homescreen(),
        );

      case detailsScreen:
        return MaterialPageRoute(
          builder: (context) =>  DetailsScreen(),
        );
    }
  }

}