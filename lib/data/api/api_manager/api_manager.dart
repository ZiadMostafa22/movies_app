import 'dart:convert';



import 'package:http/http.dart' as http;

import '../../model/popular_response/Popular_response.dart';
import '../../model/topRated_response/Toprated_response.dart';
import '../../model/upcoming_response/Upcoming_response.dart';

class ApiManager{
  static const String _apiLKey = '2bff01bceedb2a0d99757486e9c761d9';
  static const String _baseUrl = "api.themoviedb.org/3/";
  static const String _popularEndPoint = "movie/popular";
  static const String _topratedEndPoint = "movie/top_rated";
  static const String _upcomingEndPoint = "movie/upcoming";



  static Future <PopularResponse>  getPopular(String categoryId)
  async {
    Uri url = Uri.https(_baseUrl , _popularEndPoint, {
      'api_key':_apiLKey,
      'language': 'en-US',
      'page': '1'
    });
    http.Response serverResponse = await http.get(url);
    Map<String , dynamic> json = jsonDecode(serverResponse.body);
    PopularResponse popularResponse = PopularResponse.fromJson(json);
    return popularResponse ;
  }


  static Future <TopratedResponse> getTopRated(String sourceId) async{
    Uri url= Uri.https(_baseUrl , _topratedEndPoint , {
      'apiKey':_apiLKey,

    });
    var serverResponse = await  http.get(url);
    Map<String , dynamic> json = jsonDecode(serverResponse.body);
    TopratedResponse topratedResponse = TopratedResponse.fromJson(json);
    return topratedResponse;
  }


  static Future <UpcomingResponse> getUpComing(Object object, {int page = 1, String language = "en-US"}) async{
    Uri url= Uri.https(_baseUrl , _upcomingEndPoint , {
      'apiKey':_apiLKey,
      'language': language,
      'page': page.toString(),
    });
    var serverResponse = await  http.get(url);
    Map<String , dynamic> json = jsonDecode(serverResponse.body);
    UpcomingResponse upcomingResponse = UpcomingResponse.fromJson(json);
    return upcomingResponse;
  }
}