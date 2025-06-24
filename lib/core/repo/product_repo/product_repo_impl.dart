import 'package:dartz/dartz.dart';
import 'package:ecommercedash/core/errors/faileur.dart';
import 'package:ecommercedash/core/repo/product_repo/product_repo.dart';
import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';

class ProductRepoImpl implements ProductRepo {
  @override
  Future<Either<Faileur, void>> addProduct(
    AddProductInputEntity addProductInputEntity,
  ) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }
}
