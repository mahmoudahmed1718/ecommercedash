import 'package:ecommercedash/core/services/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorgeService implements StorageService {
  final storageRegrence = FirebaseStorage.instance;

  @override
  Future<String> uploadFile(String filePath) {
    throw UnimplementedError();
  }
}
