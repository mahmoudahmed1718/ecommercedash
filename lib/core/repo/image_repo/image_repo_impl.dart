import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommercedash/core/errors/faileur.dart';
import 'package:ecommercedash/core/repo/image_repo/image_repo.dart';
import 'package:ecommercedash/core/services/storage_service.dart';
import 'package:ecommercedash/core/utils/backend_points.dart';

class ImageRepoImpl implements ImageRepo {
  final StorageService storageService;

  ImageRepoImpl({required this.storageService});
  @override
  Future<Either<Faileur, String>> uploadImage(File imageFile) async {
    try {
      String url = await storageService.uploadFile(
        imageFile,
        BackendPoints.images,
      );
      return Right(url);
    } catch (e) {
      log('Error uploading image: ${e.toString()}');
      return Left(Faileur(message: 'Failed to upload image: ${e.toString()}'));
    }
  }
}
