import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'movie.dart';

class HttpHelper {
  final String urlSearchBase =
      'http://api.kcisa.kr/openapi/B551005/2022/musicFountainList?serviceKey=5a103106-4b40-47ef-8d56-58ffec18de19&numOfRows=422&pageNo=1&format=json';

  Future<List> getUpcoming() async {
    final String upcoming = urlSearchBase;
    http.Response result = await http.get(upcoming);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['body'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      return null;
    }
  }

  Future<List> findMovies(String title) async {
    final String query = urlSearchBase + title;
    http.Response result = await http.get(query);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['body'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      return null;
    }
  }
}
