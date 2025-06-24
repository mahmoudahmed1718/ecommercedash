import 'package:dartz/dartz.dart';
import 'package:ecommercedash/core/errors/faileur.dart';
import 'package:ecommercedash/core/repo/product_repo/product_repo.dart';
import 'package:ecommercedash/core/services/database_service.dart';
import 'package:ecommercedash/core/utils/backend_points.dart';
import 'package:ecommercedash/features/add_product/data/models/add_product_input_model.dart';
import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseService databaseService;

  ProductRepoImpl({required this.databaseService});
  @override
  Future<Either<Faileur, void>> addProduct(
    AddProductInputEntity addProductInputEntity,
  ) async {
    try {
      var result = await databaseService.addData(
        path: BackendPoints.addproductCollection,
        data: AddProductInputModel.fromEntity(addProductInputEntity).toJson(),
      );
      return Right(result);
    } on Exception catch (e) {
      return Left(ServerFaileur(message: e.toString()));
    }
  }
}
