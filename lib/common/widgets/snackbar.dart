import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void snackbarInfo(BuildContext context, String message) {
  showTopSnackBar(
    animationDuration: const Duration(milliseconds: 1600),
    displayDuration: const Duration(
      milliseconds: 80,
    ),
    Overlay.of(context),
    CustomSnackBar.success(
      backgroundColor: Colors.blue,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
      icon: const Icon(
        Icons.school,
        color: Colors.blue,
      ),
      message: message,
    ),
  );
}

void snackbarSuccess(BuildContext context, String message) {
  showTopSnackBar(
    animationDuration: const Duration(milliseconds: 1600),
    displayDuration: const Duration(
      milliseconds: 80,
    ),
    Overlay.of(context),
    CustomSnackBar.success(
      backgroundColor: Colors.green,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
      icon: const Icon(
        Icons.school,
        color: Colors.green,
      ),
      message: message,
    ),
  );
}

void snackbarWarning(BuildContext context, String message) {
  showTopSnackBar(
    animationDuration: const Duration(milliseconds: 2000),
    displayDuration: const Duration(
      milliseconds: 80,
    ),
    Overlay.of(context),
    CustomSnackBar.success(
      backgroundColor: Colors.orange,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
      icon: const Icon(
        Icons.school,
        color: Colors.orange,
      ),
      message: message,
    ),
  );
}

void snackbarError(BuildContext context, String message) {
  showTopSnackBar(
    animationDuration: const Duration(milliseconds: 3000),
    displayDuration: const Duration(
      milliseconds: 80,
    ),
    Overlay.of(context),
    CustomSnackBar.success(
      backgroundColor: Colors.red,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
      icon: const Icon(
        Icons.school,
        color: Colors.red,
      ),
      message: message,
    ),
  );
}
