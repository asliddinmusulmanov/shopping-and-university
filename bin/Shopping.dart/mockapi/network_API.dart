// ignore_for_file: file_names

import 'dart:convert';

import 'package:http/http.dart';

class NetworkService {
  static const String baseUrl = "65c4be6adae2304e92e33e36.mockapi.io";
  static const String shoppingUrl = "/user/shopping";

  static Future<String?> getData(String api) async {
    final url = Uri.https(baseUrl, api);
    Response response = await get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> postData(String api, Map<String, dynamic> body) async {
    Uri url = Uri.https(baseUrl, api);
    Response response = await post(url,
        body: jsonEncode(body), headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> deleteData(String api, String id) async {
    Uri url = Uri.https(baseUrl, '$api/$id');
    Response response = await delete(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      print(response.statusCode);
      return null;
    }
  }

  static Future<String?> updateData(
      String api, String id, Map<String, dynamic> body) async {
    Uri url = Uri.https(baseUrl, "$api/$id");
    Response response = await put(url,
        body: jsonEncode(body), headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200 || response.statusCode == 201) {
      response.body;
    } else {
      return null;
    }
    return null;
  }
}
