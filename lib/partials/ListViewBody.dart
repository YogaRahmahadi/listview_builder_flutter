import 'package:flutter/material.dart';

class ListViewBody extends StatelessWidget {
  ListViewBody({
    Key? key,
  }) : super(key: key);

  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(titles[index]),
              subtitle: Text(subtitles[index]),
            ),
          );
        });
  }
}
