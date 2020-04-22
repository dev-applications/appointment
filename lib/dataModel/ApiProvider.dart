import 'dart:convert';

import 'package:dio/dio.dart';

import 'UserModel.dart';

class ApiProvider {
  final String _endpoint =
      "http://svapplications.000webhostapp.com/appointmentapi/login.php";
  final Dio _dio = Dio();
  

  // singleton;
  static final ApiProvider _singleton = new ApiProvider._internal();

  factory ApiProvider() {
    return _singleton;
  }


  ApiProvider._internal();

  Future<User> userLogin(String username,String userpass) async {
    _dio.options.headers['content-Type'] = 'application/json';
    _dio.options.headers['Access-Control-Allow-Origin'] = '*';
    Response response = await _dio.get(
      'http://svapplications.000webhostapp.com',
      // data:{
      //   'username': username,
      //   'userpass': userpass,
      // }
      );
    if(response.statusCode == 201) {
      return User.fromJson(json.decode(response.toString()));
    } else {
      throw Exception('Failed to create User.');
    }
  }
}