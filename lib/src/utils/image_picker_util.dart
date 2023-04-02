import 'package:image_picker/image_picker.dart';

enum ImageFrom {
  galery,
  camera,
}

class ImagePickerUtil {
  static Future<XFile?> getImageFrom(ImageFrom source) async {
    final pickedImage = await ImagePicker().pickImage(
      source: source == ImageSource.camera
          ? ImageSource.camera
          : ImageSource.gallery,
      maxHeight: 1800,
      maxWidth: 1800,
    );
    return pickedImage;
  }
}
