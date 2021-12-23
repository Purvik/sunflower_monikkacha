import 'package:dio/dio.dart';
import 'package:sunflower/models/post_model.dart';
import 'package:sunflower/services/api_services.dart';

class HomeController {
  getData () async{
    Response response = await ApiService.getPostData();
    var dataList = [];
    var data = response.data;
    for (var element in data) {
      dataList.add(PostModel.fromJson(element));
    }
   return dataList;
  }
}