import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:code_genius/models/models_model.dart';
import 'package:code_genius/services/api_consts.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<ModelsModel>> getModels() async {
    try {
      var response = await http.get(Uri.parse("$BASE_URL/models"),
          headers: {"Authorization": "Bearer $API_KEY"});

      Map jsonRespone = jsonDecode(response.body);
      if (jsonRespone['error'] != null) {
        //print("jsonRespone['error'] $jsonRespone['error']['message']");
        throw HttpException(jsonRespone['error']["message"]);
      }
      print("jsonRespone $jsonRespone");
      List temp = [];
      for (var value in jsonRespone["data"]) {
        temp.add(value);
        log("temp: ${value["id"]}");
      }
      return ModelsModel.modelsFromSnapshot(temp);
    } catch (error) {
      log("error $error");
      rethrow;
    }
  }
}
