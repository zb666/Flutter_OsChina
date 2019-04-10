import 'package:shared_preferences/shared_preferences.dart';

class DataUtils {
  static const String SP_ACCESS_TOKEN = 'access_token';
  static const String SP_REFRESH_TOKEN = 'refresh_token';
  static const String SP_UID = 'sp_uid';

  /**
   * 进行个人信息的存储
   */
  static Future<void> saveLoginInfo(Map<String, dynamic> maps) async {
    if (maps != null && maps.isNotEmpty) {
      var sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences
        ..setString(SP_ACCESS_TOKEN, "maps[accesstoken")
        ..setString(SP_REFRESH_TOKEN, "maps[refresh_token");
//      ..setInt(1, value)

    }
  }

  static Future<void> clearLoginInfo() async {
    var sp = await SharedPreferences.getInstance();
    sp.setString('accesstoken', ""); //清空该部分的数据
  }

  static Future<void> isLogin() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    bool isLogin = sharedPreferences.getBool("isLogin");
    return isLogin != null && isLogin;
  }
}
