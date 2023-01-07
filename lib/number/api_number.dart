import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled13/main.dart';

class ApiNumber {
  ApiNumber();


  Future getHttp(int number) async {
    try{
    var response = await Dio().get('http://numbersapi.com/$number');
    String postss = response.data;
    return postss;
  }catch (e) {
      print(e);
    }
  }
}
