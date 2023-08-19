import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    if (year == other.year && month == other.month && day == other.day) {
      if (kDebugMode) {
        print('${toString()} and $other are the same date!');
      }
      return true;
    } else {
      return false;
    }
  }

  bool isBeforeDate(DateTime other) {
    return year == other.year && month == other.month && day < other.day ||
        year == other.year && month < other.month ||
        year < other.year;
  }

  bool isAfterDate(DateTime other) {
    return year == other.year && month == other.month && day > other.day ||
        year == other.year && month > other.month ||
        year > other.year;
  }

  formatForUser() {
    DateFormat dateFormat = DateFormat("dd.MM.yyyy");
    return dateFormat.format(this).toString();
  }

  formatForJson() {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    return dateFormat.format(this).toString();
  }
}

extension ColorLog on String {
  String logWarning() {
    final String message =
        "\u001b[1;35m [SCHULDATEN HUB] WARNING: $this \u001b[0m";
    return message;
  }

  String logSuccess() {
    final String message =
        "\u001b[1;32m [SCHULDATEN HUB] SUCCESS: $this \u001b[0m";
    return message;
  }

  String logError() {
    final String message =
        "\u001b[1;31m [SCHULDATEN HUB] ERROR: $this \u001b[0m";
    return message;
  }

  String logInfo() {
    final String message =
        "\u001b[1;34m [SCHULDATEN HUB] INFO: $this \u001b[0m";
    return message;
  }
}
