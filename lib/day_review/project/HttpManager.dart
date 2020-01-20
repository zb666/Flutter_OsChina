import 'package:dio/dio.dart';
import 'package:flutter_osc_client/constants/constants.dart';

class HttpManager {

  Dio _dio;
  
  static HttpManager _instance;

  factory HttpManager.getInstance() {
    if (_instance == null) {
      _instance = new HttpManager._internal();
    }
    return _instance;
  }

  HttpManager._internal() {
    BaseOptions baseOptions =
        BaseOptions(baseUrl: "Url", connectTimeout: 5000, receiveTimeout: 5500);
    _dio = Dio(baseOptions);
  }

}
