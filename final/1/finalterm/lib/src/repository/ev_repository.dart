import 'dart:convert' as convert;
import 'package:fianlterm/src/model/ev.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class EvRepository {
  // api key
  var apiKey = "apiKey";

  Future<List<Ev>?> loadEvs() async {
    String baseUrl =
        "http://api.kcisa.kr/openapi/B551005/2022/musicFountainList?serviceKey=5a103106-4b40-47ef-8d56-58ffec18de19&numOfRows=422&pageNo=1&format=json";
    final response = await http.get(Uri.parse(baseUrl));

    // 정상적으로 데이터를 불러왔다면
    if (response.statusCode == 200) {
      // 데이터 가져오기
      final body = convert.utf8.decode(response.bodyBytes);

      // xml => json으로 변환
      final xml = Xml2Json()..parse(body);
      final json = xml.toParker();

      // 필요한 데이터 찾기
      Map<String, dynamic> jsonResult = convert.json.decode(json);
      final jsonEv = jsonResult['response']['body']['items'];

      // 필요한 데이터 그룹이 있다면
      if (jsonEv['item'] != null) {
        // map을 통해 데이터를 전달하기 위해 객체인 List로 만든다.
        List<dynamic> list = jsonEv['item'];

        // map을 통해 Ev형태로 item을  => Ev.fromJson으로 전달
        return list.map<Ev>((item) => Ev.fromJson(item)).toList();
      }
    }
  }
}
