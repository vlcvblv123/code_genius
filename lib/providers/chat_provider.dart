import 'package:code_genius/models/chat_model.dart';
import 'package:code_genius/services/api_services.dart';
import 'package:flutter/material.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> chatList = [];
  List<ChatModel> get getChatList {
    return chatList;
  }

  void addUserMessage({required String msg}) {
    chatList.add(ChatModel(msg: msg, chatIndex: 0));
    notifyListeners();
  }

  Future<void> sendMessageAndGetAnswers(
      {required String msg, required String choseModelId}) async {
    chatList.addAll(await ApiService.sendMessage(
      messagex: msg,
      modelId: choseModelId,
    ));
    notifyListeners();
  }
}
