import 'dart:convert';

import 'package:google_clone/config/api_keys.dart';
import 'package:http/http.dart' as http;

import '../config/api_json.dart';

class ApiService {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('%20')
            : queryTerm;

        final String uri =
            'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start';
        final response = await http.get(Uri.parse(uri));

        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
    }
    return apiResponse;
  }
}
