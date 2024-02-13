// import 'dart:convert';

// import 'package:http/http.dart';
 
// class NetworkService {
  
// static const String baseUrl = "6554a27063cafc694fe6bbeb.mockapi.io";
//   static const String universityUrl= "/University";

//   static Future<String?> getData(String baseUrl, {required String api}) async {
//     final url = Uri.https(baseUrl, api);
//     Response response = await get(url);
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       return response.body;
//     } else {
//       return null;
//     }
//   }

//   static Future<String?> postData(String api, Map<String, dynamic> body) async {
//     Uri url = Uri.https(baseUrl, api);
//     Response response = await post(url, body: jsonEncode(body), headers: {"Content-Type":"application/json"});
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       return response.body;
//     } else {
//       return null;
//     }
//   }
// }
