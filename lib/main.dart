import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> users = ["Tom", "Bob", "Sam", "Mike"];
    final List<IconData> icons = [Icons.face, Icons.tag_faces, Icons.work, Icons.book];
    final List<String> companies = ["Google", "Microsoft", "Apple", "JetBrains"];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("METANIT.COM"),
        ),
        body: ListView.builder(
          itemCount: users.length,
          padding: EdgeInsets.all(20),
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(icons[index]),
                  title: Text(users[index]),
                  trailing: Icon(Icons.call),
                  subtitle: Text("Works in ${companies[index]}"),
                ),
                Divider(), // Adding a divider
              ],
            );
          },
        ),
      ),
    );
  }
}
