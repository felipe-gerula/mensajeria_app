import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mensajeria_app/database.dart' as db;
import 'package:mensajeria_app/model/group.dart';
import 'package:mensajeria_app/model/message.dart';
import 'package:mensajeria_app/widgets/loading.dart';
import 'package:mensajeria_app/widgets/message_box.dart';
import 'package:mensajeria_app/widgets/message_list.dart';
import 'package:mensajeria_app/widgets/red_error.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Group group = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(group.name),
      ),
      backgroundColor: Colors.teal[100],
      body: StreamBuilder(
        stream: db.getGroupMessages(group.id),
        builder: (context, AsyncSnapshot<List<Message>> snapshot){
          if(snapshot.hasError){
            return RedError(snapshot.error);
          }
          if(!snapshot.hasData){
            return Loading();
          }
          return Stack(
            children: <Widget>[
              LayoutBuilder(builder:(context,BoxConstraints contraints){
                 return Image.asset("assets/arena-background.jpg");
               },
              ),
              Column(
                children: <Widget>[
                  Expanded(
                      child: MessageList(messages : snapshot.data)
                  ),
                  MessageBox(onSend: (text){
                      db.sendMessage(group.id, Message(text));
                    },
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

