import 'package:flutter/material.dart';
import 'package:mensajeria_app/model/message.dart';

class MessageList extends StatelessWidget {
  final List<Message> messages;

  const MessageList({
    @required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, index){
          return ListTile(
            title : Text(messages[index].text),
            subtitle: Text(messages[index].datetime.toString()),
          );
        });
  }
}