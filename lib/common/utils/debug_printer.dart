import 'package:flutter/foundation.dart';
import 'package:schooldata_hub_client/common/utils/extensions.dart';

class Debug {
  success(String message) {
    debugPrint(message.logSuccess());
  }

  warning(String message) {
    debugPrint(message.logWarning());
  }

  error(String message) {
    debugPrint(message.logError());
  }

  info(String message) {
    debugPrint(message.logInfo());
  }
}
