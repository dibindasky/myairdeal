import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:share_plus/share_plus.dart';

Future<void> sharePdfFromBase64(
    String pdfBase64String, String additionalData) async {
  // Decode base64 string to Uint8List
  Uint8List pdfData = base64Decode(pdfBase64String);

  // Save PDF data to a temporary file
  final tempDir = Directory.systemTemp;
  final tempFile = File('${tempDir.path}/myairdeal_$additionalData.pdf');
  await tempFile.writeAsBytes(pdfData);
  // Share PDF file
  await Share.shareXFiles([XFile(tempFile.path)]);
}
