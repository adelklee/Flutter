import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class HttpHelper {
  Future<String> getUpcoming() async {
    final String upcoming = "https://www.msn.com/ko-kr/weather";
    //"http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst?serviceKey=srxocYr5wLOGBC0r7GIPKOGzuaSdRO8Rn3wxkqxQPA0lhTw8n29y1VGpvpOTnxRAdiarNs0YY8oON3bJSPs9%2Fg%3D%3D&numOfRows=10&pageNo=1&base_date=20221116&base_time=0600&nx=55&ny=127"
    try {
      http.Response result = await http.get(Uri.parse(upcoming));
      if (result.statusCode == HttpStatus.ok) {
        return result.body;
      } else {
        return "b";
      }
    } catch (e) {
      return "a";
    }
  }
}
