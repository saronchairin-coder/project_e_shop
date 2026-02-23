// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class ApiService {
//   final String baseUrl = 'https://e-shop-1-m034.onrender.com/api/v1';
//
//   Future<List<dynamic>> get(String endpoint) async {
//     final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }


import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../MODEL_API/models/category.dart';

class API_Service{
  // final String baseUrl = "https://e-shop-1-m034.onrender.com/api/v1/categories/all";
  final String baseUrl ="https://e-shop-1-m034.onrender.com/api/v1/categories/6";
    Future<Category>  getCategory() async{
    final response = await http.get(Uri.parse(baseUrl));

    if(response.statusCode == 200) {
      print("status ${response.statusCode}");
      print("Body ${response.body}");
      // return Category.fromJson(json.decode(response.body));
      final Map<String, dynamic> jsonResponse = json.decode(response.body);

      // Make sure to get `data` first
      final categoryJson = jsonResponse['data'];

      final category = Category.fromJson(categoryJson);

      return getCategory();

      //get all
      // final List data = jsonDecode(response.body);
      // return data.map((e) => Category.fromJson(e)).toList();
    }else{
      throw Exception("Field to load Category");
    }
    }
}

