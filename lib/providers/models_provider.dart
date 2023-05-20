import 'package:code_genius/models/models_model.dart';
import 'package:code_genius/services/api_services.dart';
import 'package:flutter/material.dart';

class ModelsProvider with ChangeNotifier {
  String currentModels = "gpt-3.5-turbo";
  String get getCurrentModel {
    return currentModels;
  }

  void setCurrentModel(String newModel) {
    currentModels = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];

  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
