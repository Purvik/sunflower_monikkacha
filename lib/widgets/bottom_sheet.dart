import 'package:flutter/material.dart';
import 'package:sunflower/utils/app_color.dart';

class ShareBottomSheet {
  static get(context, item) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 160.0,
              color: Color(0xFF737373),
              child: Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: ListView(
                    children: [
                      SizedBox(height: 10.0),
                      Text(
                        item.id.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 24.0),
                      ),
                      Text(
                        item.body.toString(),
                        style: TextStyle(color: AppColors.doveGray),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
