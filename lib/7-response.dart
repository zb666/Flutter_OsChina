import 'package:dio/dio.dart';
//延迟导入
import 'main.dart'  deferred as lazyLib;
void main(){
  String ulr = 'https://api.douban.com/v2/movie/top250?start=10&count=10';
  doHttp(ulr);
  //延时导入
//  var loadLibrary = lazyLib.loadLibrary();
//  print(loadLibrary);
}

doHttp(String ulr) async{
  var response = await Dio().get(ulr);
  print(response);
}