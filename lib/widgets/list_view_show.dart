import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewShow extends StatelessWidget {
  final list;
  Function onItemSelected;

  ListViewShow({required this.list, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          var singleItem = list[index];
          return Card(
              child: ListTile(
                  onTap: () => onItemSelected(singleItem),
                  subtitle: Text(singleItem.title),
                  title: Text(singleItem.id.toString())));
        });
  }
}
