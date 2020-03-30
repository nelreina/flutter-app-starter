import 'dart:convert';

import 'package:http/http.dart' as http;

const String API = 'https://tracking.lcmbv.com/api';

class NetworkService {
  Future<Map<String, dynamic>> getData(
      {String path, Map<String, String> headers}) async {
    String url = '$API$path';
    http.Response response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      if (response.body.length > 0)
        return json.decode(response.body);
      else
        return null;
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
