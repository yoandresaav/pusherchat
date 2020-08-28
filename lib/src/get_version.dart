
import 'dart:async';

import 'package:flutter/services.dart';

class Pusherchat {
  static const MethodChannel _channel =
      const MethodChannel('pusherchat');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version + 'Hola desde el otro lado';
  }
}