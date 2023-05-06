import 'package:code_genius/constants/color.dart';
import 'package:code_genius/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatgptScreen extends StatelessWidget {
  const ChatgptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Gpt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: scfbgc,
          appBarTheme: AppBarTheme(color: kcardColor)),
      home: const ChatScreen(),
    );
  }
}
