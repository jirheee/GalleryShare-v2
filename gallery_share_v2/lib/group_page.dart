import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  final groups = List<GroupItem>.generate(
      10,
      (index) => GroupItem('$index th group', 'not implemented',
          List<String>.generate(5, (index) => '$index')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group Page"),
      ),
      body: ListView.builder(
        itemCount: groups.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(groups[index].groupName),
          );
        },
      ),
    );
  }
}

class GroupItem {
  final String groupName;
  final String imgUrl;
  final List<String> members;

  GroupItem(this.groupName, this.imgUrl, this.members);
}
