import 'package:flutter/foundation.dart';
import 'package:schooldata_hub_client/common/utils/extensions.dart';

class Debug {
  static final Debug _instance = Debug._internal();
  static Debug get instance => _instance;
  Debug._internal();

  static void error(String message) {
    debugPrint(message.logError());
  }

  static void info(String message) {
    debugPrint(message.logInfo());
  }

  static void success(String message) {
    debugPrint(message.logSuccess());
  }

  static void warning(String message) {
    debugPrint(message.logWarning());
  }
}
