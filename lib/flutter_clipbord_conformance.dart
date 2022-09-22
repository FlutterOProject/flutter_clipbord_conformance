
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterClipbordConformance {
  static const MethodChannel _channel = MethodChannel('flutter_clipbord_conformance');

  static Future<String?> enableClipbord() async {
    final String? enableClipbord = await _channel.invokeMethod('enableClipbord');
    return enableClipbord;
  }

}
