import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class HttpHelper {
  Future<String> getUpcoming() async {
    final String upcoming =
        "https://api.openweathermap.org/data/2.5/weather?lat=35.87&lon=128.60&appid=93b0136aa436f92fc5ce0c73ef850237";
    http.Response result = await http.get(Uri.parse(upcoming));
    if (result.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json1 = json.decode(result.body);
      List json2 = json1['weather'];
      Map<String, dynamic> json3 = json2[0];
      String json4 = json3['main'];
      return json4;
    } else {
      return "";
    }
  }

  Future<List> getUpcomingList() async {
    List reresult = [];
    final String upcoming =
        "https://api.openweathermap.org/data/2.5/forecast?lat=35.87&lon=128.60&appid=93b0136aa436f92fc5ce0c73ef850237";
    http.Response result = await http.get(Uri.parse(upcoming));
    if (result.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json1 = json.decode(result.body);
      for (int i = 0; i < 40; i++) {
        String json2 = json1['list'][i]['dt_txt'] +
            ": " +
            json1['list'][i]['weather'][0]['main'];
        reresult.add(json2);
      }
      return reresult;
    } else {
      return [];
    }
  }
}
