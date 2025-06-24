import 'dart:io';

import 'package:ecommercedash/core/services/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as b;

class FirebaseStorgeService implements StorageService {
  final storageRegrence = FirebaseStorage.instance.ref();

  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);
    String extenstionName = b.extension(file.path);
    var fileRefrence = storageRegrence.child('$path/$fileName.$extenstionName');
    await fileRefrence.putFile(file);
    var fileUrl = await fileRefrence.getDownloadURL();
    return fileUrl;
  }
}
