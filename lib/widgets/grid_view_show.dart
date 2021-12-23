import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunflower/utils/app_color.dart';

class GridViewShow extends StatelessWidget {
  final list;
  Function onItemSelected;

  GridViewShow({required this.list, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => onItemSelected(list[index]),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list[index].id.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 12.0,),
                  Text(
                    list[index].title,
                    style: TextStyle(color: AppColors.doveGray),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
