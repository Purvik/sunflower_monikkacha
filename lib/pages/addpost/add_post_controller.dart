import 'package:flutter/cupertino.dart';
import 'package:sunflower/services/api_services.dart';
import 'package:sunflower/utils/scaffold_manager.dart';

class AddPostController {
  addNewPost({required String title, required String body , required BuildContext context}) async {
    var data = {
      "userId": 1,
      "title": title,
      "body": body,
    };
    var response = await ApiService.addPost(data: data);

    if (response.statusCode == 200 || response.statusCode == 201) {
      ScaffoldManager.showText(context: context, text: 'Post added successfully');
    } else {
      ScaffoldManager.showText(context: context, text: 'Something went wrong , please try again later');
    }
  }
}
