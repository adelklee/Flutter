import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class HttpHelper {
  Future<String> getUpcoming() async {
    // final String upcoming = "https://www.msn.com/ko-kr/weather";
    final String upcoming = "https://naver.com/";

    http.Response result = await http.get(Uri.parse(upcoming));
    if (result.statusCode == HttpStatus.ok) {
      return result.body;
    } else {
      return "Error";
    }
  }

  Future<String> getUpcomingTemp() async {
    final String upcoming = "https://naver.com/";

    http.Response result = await http.get(Uri.parse(upcoming));

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final current = JsonEncoder.withIndent(jsonResponse['content']);
      return current.indent!;
    } else {
      return "";
    }
  }
}
