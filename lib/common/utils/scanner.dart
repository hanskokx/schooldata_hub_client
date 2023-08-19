import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

Future<String?>? scanner<String>(
  BuildContext context,
) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SimpleBarcodeScannerPage(),
    ),
  );
  if (result is String) {
    return result;
  }
  return null;
}
