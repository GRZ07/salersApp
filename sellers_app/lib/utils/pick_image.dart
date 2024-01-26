import 'package:image_picker/image_picker.dart';

Future<String?> pickImage() async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    return pickedFile.path;
  }
  return null;
}
