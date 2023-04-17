import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'dart:async';

class HttpHelper {
  Future<String> getUpcoming() async {
    final String upcoming =
        "https://www.daegufood.go.kr/kor/api/Alley.html?mode=json";
    http.Response result = await http.get(Uri.parse(upcoming));
    Map<String, dynamic> jsons = json.decode(result.body);
    if (result.statusCode == HttpStatus.ok) {
      return "Status: " + jsons["status"] + "\r\n" + "Total: " + jsons["total"];
    } else {
      return "";
    }
  }

  Future<List<String>> getUpcomingList() async {
    List<String> reresult = [];
    final String upcoming =
        "https://www.daegufood.go.kr/kor/api/Alley.html?mode=json";
    http.Response result = await http.get(Uri.parse(upcoming));
    Map<String, dynamic> jsons = json.decode(result.body);
    if (result.statusCode == HttpStatus.ok) {
      for (int i = 0; i < (jsons["data"] as List).length; i++) {
        reresult.add(jsons["data"][i]["cnt"].toString() +
            ": " +
            jsons["data"][i]["OPENDATA_ID"].toString() +
            ", " +
            jsons["data"][i]["FD_CS"].toString() +
            "\r\n" +
            jsons["data"][i]["SMPL_DESC"].toString() +
            "\r\n");
      }

      return reresult;
    } else {
      return [];
    }
  }
}
