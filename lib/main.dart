import 'package:flutter/material.dart';
import 'package:mensajeria_app/pages/chat_page.dart';
import 'package:mensajeria_app/pages/group_list_pages.dart';

void main() {
  runApp(Messaging());
}

class Messaging extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messaging App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => GroupListPage(),
        "/chat" : (_) => ChatPage(),
      },
    );
  }
}



