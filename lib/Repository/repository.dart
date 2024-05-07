import 'dart:convert';
import 'package:http/http.dart'as http;

import '../ModelClass/APiModelclass.dart';

class ImageRepository {
  Future<List<ApimodelClass>> fetchImages() async {
    final response = await http.get(Uri.parse('https://rubidya.com/api/users/get-media'));
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => ApimodelClass.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }
}