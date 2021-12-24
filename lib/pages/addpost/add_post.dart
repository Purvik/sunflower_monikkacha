import 'package:flutter/material.dart';
import 'package:sunflower/pages/addpost/add_post_controller.dart';
import 'package:sunflower/utils/scaffold_manager.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  late AddPostController addPostController;
  late TextEditingController titleEditingController;
  late TextEditingController bodyEditingController;

  @override
  void initState() {
    super.initState();
    addPostController = AddPostController();
    titleEditingController = TextEditingController();
    bodyEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        children: [
          TextField(
            controller: titleEditingController,
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Title",
            ),
          ),
          TextField(
            minLines: 3,
            maxLines: 3,
            controller: bodyEditingController,
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Body",
            ),
          ),
          SizedBox(height: 12.0,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(onSurface: Colors.blue),
            onPressed: () => addNewPost(context),
            child: Text('ADD'),
          )
        ],
      ),
    );
  }

  addNewPost(context) async{
    String title = titleEditingController.text;
    String body = bodyEditingController.text;

    if (title.isEmpty) {
      ScaffoldManager.showText(context: context, text: 'title can\'t be empty');
      return;
    }
    if (body.isEmpty) {
      ScaffoldManager.showText(context: context, text: 'body can\'t be empty');
      return;
    }
    await addPostController.addNewPost(title: title, body: body , context : context);
    titleEditingController.text = "";
    bodyEditingController.text = "";
  }
}
