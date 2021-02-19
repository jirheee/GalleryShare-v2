import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  static List<String> members = ['이정인', '조소정', '한다진', '공희재'];

  List<GroupItem> groups = List<GroupItem>.generate(20,
      (index) => GroupItem('${index + 1}th group', 'not implemented', members));

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
            leading: FlutterLogo(size: 56.0), //네트워크 이미지로 바꿔야함
            title: Text(groups[index].groupName),
            subtitle: Text(groups[index].members.join(", ")),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    size: 20.0,
                  ),
                  onPressed: () => _onListMorePressed(),
                ),
              ],
            ),
            onLongPress: () => _onListLongPressed(index),
            onTap: () => _onListPressed(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
      endDrawer: Drawer(child: Text("hello")),
    );
  }

  _onListMorePressed() {}

  _onListLongPressed(int index) {}

  _onListPressed(int indexw) {}
}

class GroupItem {
  final String groupName;
  final String imgUrl;
  final List<String> members;

  GroupItem(this.groupName, this.imgUrl, this.members);
}
