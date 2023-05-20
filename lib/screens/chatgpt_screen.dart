import 'package:code_genius/constants/color.dart';
import 'package:code_genius/models/models_model.dart';
import 'package:code_genius/providers/chat_provider.dart';
import 'package:code_genius/providers/models_provider.dart';
import 'package:code_genius/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatgptScreen extends StatelessWidget {
  const ChatgptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Chat Gpt',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: scfbgc,
            appBarTheme: AppBarTheme(color: kcardColor)),
        home: const ChatScreen(),
      ),
    );
  }
}
