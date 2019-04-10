
//flutter中没有interface关键字 只有abstract关键字
abstract class AppColors {
  //应用主题色
  static const APP_THEME = 0xff63ca6c;
  static const APPBAR = 0xffffffff;
}

abstract class AppUrls {
  static const String HOST = "https://www.oschina.net";

  //授权登录 ctrl shift u 字符串大写
  static const String OAUTSD_AUTHORIZE = HOST + '/action/oauth2/authorize';
  //id 秘钥 回调地址

}
