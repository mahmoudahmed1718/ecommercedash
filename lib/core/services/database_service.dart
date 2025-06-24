import 'package:ecommercedash/core/services/firestore_service.dart';

abstract class DatabaseService {
  DatabaseService(FirestoreService firestoreService);

  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  });
  Future<bool> checkUserExists({
    required String path,
    required String documentId,
  });
}
