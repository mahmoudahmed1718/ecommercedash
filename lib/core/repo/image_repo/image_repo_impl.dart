import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommercedash/core/errors/faileur.dart';
import 'package:ecommercedash/core/repo/image_repo/image_repo.dart';

class ImageRepoImpl implements ImageRepo {
  @override
  Future<Either<Faileur, String>> uploadImage(File imageFile) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}
