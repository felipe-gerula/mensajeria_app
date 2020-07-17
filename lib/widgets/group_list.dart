import 'package:flutter/material.dart';
import 'package:mensajeria_app/model/group.dart';
import 'group_tile.dart';

class GroupList extends StatelessWidget {
  final List<Group> groups;

  const GroupList({
    @required this.groups,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: groups.length,
      itemBuilder: (context , index){
        return GroupTile(groups[index]);
      },
      separatorBuilder: (context, index){
        return Divider(
          height: 1,
          indent: 75,
          endIndent: 15,
        );
      },
    );
  }
}
