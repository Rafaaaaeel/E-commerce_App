import 'dart:convert';
import 'package:http/http.dart' as http;

class SearchChannel {
  final String baseUrl = 'http://localhost:5126/v1/api';

  Future<dynamic> fetchProductList() async {
    final response = await http.get(Uri.parse('$baseUrl/Product'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
