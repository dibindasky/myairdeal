import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myairdeal/domain/models/image/image_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class ImagePickerClass {
  static Future<ImageModel?> getImage({
    bool camera = true,
    bool cameraDeviceFront = false,
  }) async {
    try {
      XFile? pickedImage;
      if (camera) {
        pickedImage = await ImagePicker().pickImage(
          source: ImageSource.camera,
          preferredCameraDevice:
              cameraDeviceFront ? CameraDevice.front : CameraDevice.rear,
        );
      } else {
        pickedImage =
            await ImagePicker().pickImage(source: ImageSource.gallery);
      }
      if (pickedImage != null) {
        final extension = pickedImage.path.split(".").last;
        final directory = await getTemporaryDirectory();
        final compressedFilePath =
            '${directory.path}/${const Uuid().v4()}.$extension';
        File? compressedFile;
        int quality = 90;
        while (compressedFile == null ||
            compressedFile.lengthSync() > 300 * 1024) {
          compressedFile = await testCompressAndGetFile(
              File(pickedImage.path), compressedFilePath, quality);
          quality -= 10;
          if (quality < 0) {
            return null;
          }
        }
        final bytes = await File(compressedFile.path).readAsBytes();
        String base64 = base64Encode(bytes);
        base64 = 'data:image/$extension;base64,$base64';
        print('imagepicker =>base64 ======================== $base64');
        return ImageModel(
          fileImage: compressedFile,
          base64: base64,
        );
      }
      return null;
    } catch (e) {
      log('from image pick class $e');
      return null;
    }
  }

  static Future<File?> testCompressAndGetFile(
      File file, String targetPath, int quality) async {
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
    );
    if (result != null) {
      return File(result.path);
    }
    return null;
  }
}
