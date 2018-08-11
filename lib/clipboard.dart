import 'dart:async';

import 'package:flutter/services.dart';

class ClipboardManager {
  static const MethodChannel _channel =
      const MethodChannel('clipboard');

  static copy(String content) async {
    await _channel.invokeMethod('copy', {
      "content": content
    });
  }
}
