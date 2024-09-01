// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class Api {
//   Future<Map<String, dynamic>> getService({required String url}) async {
//     try {
//       http.Response response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         return jsonDecode(response.body);
//       } else {
//         throw Exception('Unexpected status code: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Unexpected status code:$e');
//     }
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<Map<String, dynamic>> getService({required String url}) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      } else {
        throw Exception('Unexpected status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }
}
