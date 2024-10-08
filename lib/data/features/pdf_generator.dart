import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> takePermission() async {
  Map<Permission, PermissionStatus> statuses = await [
    Permission.storage,
    //add more permission to request here.
  ].request();
  if (statuses[Permission.storage]!.isGranted) {
    return true;
  } else {
    return false;
  }
}

Future<void> pdfGenerator(String base64String) async {
  try {
    final per = await takePermission();
    if (!per) {
      takePermission();
      return;
    }
    var dir =
        await getExternalStorageDirectory(); // Use getExternalStorageDirectory() instead of DownloadsPathProvider
    if (dir != null) {
      String savePath =
          '${dir.path}/file.pdf'; // Simplify the savePath generation

      var bytes = base64.decode(base64String.replaceAll(
          "\n", '')); // Use base64.decode instead of base64Decode

      final file = File(savePath);
      await file.writeAsBytes(bytes);
      await OpenFile.open(file.path);
    } 
  } on PlatformException catch (e) {
    log('Platform Exception: ${e.message}');
  } catch (e) {
    log('Error generating PDF: $e');
  }
}
