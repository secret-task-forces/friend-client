import 'package:flutter_image_compress/flutter_image_compress.dart';

const targetSize = 10 * 1024 * 1024; // 10MB

abstract class ImageUtils {
  static Future<(XFile?, String)> compressImage(
      {required XFile file, int targetSize = targetSize}) async {
    int quality = 100;
    XFile? compressedFile;

    String ext = 'jpeg';

    do {
      compressedFile = await FlutterImageCompress.compressAndGetFile(
        file.path,
        '${file.path}_compressed.$ext',
        format: CompressFormat.jpeg,
        quality: quality,
      );

      quality -= 10;
    } while (compressedFile != null &&
        await compressedFile.length() > targetSize &&
        quality > 0);

    return (compressedFile, ext);
  }
}
