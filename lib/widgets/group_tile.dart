
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mensajeria_app/model/group.dart';

class GroupTile extends StatelessWidget {
  final Group group;
  const GroupTile(this.group);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.all(Radius.circular(12)),
      color: Colors.tealAccent,
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed("/chat",arguments: group);
        },
        leading: Container(
          width: 45,
          decoration: BoxDecoration(
            color: Colors.teal[100],
            shape: BoxShape.circle,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(group.name),
            Text("16/7/2020",style: TextStyle(color: Colors.grey[500],fontSize: 12),),
          ],
        ),
      ),
    );
  }
}
