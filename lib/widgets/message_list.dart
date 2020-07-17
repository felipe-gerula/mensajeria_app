import 'package:flutter/material.dart';
import 'package:mensajeria_app/model/message.dart';

import 'message_widget.dart';

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
        return Padding(
          padding: const EdgeInsets.fromLTRB(16,0,16,6),
          child: MessageWidget(messages[index]),
        );
         }
        );
  }
}
