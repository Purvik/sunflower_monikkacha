import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as DioApi;
import 'package:sunflower/utils/api_endpoints.dart';


class ApiService {
  static late Dio _dio;

  static void init() async {
    _dio = Dio();
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  static Future<dynamic> _postRequest(
      {required endpoint, param: const {"": ""}}) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : POST ");
      print("REQUEST END POINT : $endpoint");
      print("REQUEST DATA : $param");

      DioApi.Response response = await _dio.post(endpoint, data: param);
      return response;
    } on Exception catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<dynamic> _putRequest(
      {required endpoint, param: const {"": ""}, id}) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : PUT ");
      print("REQUEST END POINT : $endpoint" + "/" + id.toString());
      print("REQUEST DATA : $param");

      DioApi.Response response =
      await _dio.put(endpoint + "/" + id.toString(), data: param);
      return response;
    } on Exception catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<dynamic> _deleteRequest({required endpoint, id}) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : delete ");
      print("REQUEST END POINT : $endpoint" + "/" + id.toString());

      DioApi.Response response =
      await _dio.delete(endpoint + "/" + id.toString());
      return response;
    } on Exception catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<dynamic> _getRequest({endpoint, param: const {"": ""}}) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : GET ");
      print("REQUEST END POINT : $endpoint");
      print("REQUEST DATA : $param");

      DioApi.Response response =
      await _dio.get(endpoint, queryParameters: param);
      return response;
    } on Exception catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<Response> getPostData() async {
    var response =
    await _getRequest(endpoint:  ApiEndpoints.POSTS);
    return response;
  }
}