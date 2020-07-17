import 'package:flutter/material.dart';
import 'package:mensajeria_app/database.dart' as db;
import 'package:mensajeria_app/model/group.dart';
import 'package:mensajeria_app/widgets/group_list.dart';
import 'package:mensajeria_app/widgets/loading.dart';
import 'package:mensajeria_app/widgets/red_error.dart';

class GroupListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messaging App"),
      ),
      body: StreamBuilder(
          stream: db.getGroups(),
          builder: (context, AsyncSnapshot<List<Group>> snapshot){
            if(snapshot.hasError){
              return RedError(snapshot.error);
            }
            if(!snapshot.hasData){
              return Loading();
            }
            return GroupList(groups : snapshot.data);
           }
          ),
    );
  }
}

