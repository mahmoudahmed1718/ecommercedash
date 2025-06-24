import 'package:dartz/dartz.dart';
import 'package:ecommercedash/core/errors/faileur.dart';
import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';

abstract class ProductRepo {
  Future<Either<Faileur, void>> addProduct(
    AddProductInputEntity addProductInputEntity,
  );
}
