import 'package:code_genius/models/models_model.dart';
import 'package:flutter/material.dart';

class ModelsProvider with ChangeNotifier {
  List<ModelsModel> modelsList = [];
  String currentModels = "gpt-3.5-turbo-0301";
  List<ModelsModel> get getModelsList {
    return modelsList;
  }
}
