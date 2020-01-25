import 'dart:async';

import 'package:flutter/services.dart';

class PluginLogPrint {
  static const MethodChannel _channel =
      const MethodChannel('plugin_log_print');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
