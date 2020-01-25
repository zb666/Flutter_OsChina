import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginLog {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_log');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  

  static void logI(String tag){

  }

}
