import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommercedash/core/errors/faileur.dart';

abstract class ImageRepo {
  Future<Either<Faileur, String>> uploadImage(File imageFile);
}
