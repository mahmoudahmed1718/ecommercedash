import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommercedash/core/errors/faileur.dart';
import 'package:ecommercedash/core/repo/image_repo/image_repo.dart';
import 'package:ecommercedash/core/services/firebase_storge_service.dart';

class ImageRepoImpl implements ImageRepo {
  final FirebaseStorgeService firebaseStorgeService;

  ImageRepoImpl({required this.firebaseStorgeService});
  @override
  Future<Either<Faileur, String>> uploadImage(File imageFile) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}
