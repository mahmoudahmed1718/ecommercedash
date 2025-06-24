import 'package:bloc/bloc.dart';
import 'package:ecommercedash/core/repo/image_repo/image_repo.dart';
import 'package:ecommercedash/core/repo/product_repo/product_repo.dart';
import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:meta/meta.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final ProductRepo productRepo;
  final ImageRepo imageRepo;
  AddProductCubit(this.productRepo, this.imageRepo)
    : super(AddProductInitial());

  Future<void> addProduct(AddProductInputEntity addProductInputEntity) async {
    emit(AddProductLoading());
    var result = await imageRepo.uploadImage(addProductInputEntity.imageFile);
    result.fold(
      (fail) {
        emit(AddProductFailure(message: fail.message));
      },
      (url) async {
        addProductInputEntity.imageUrl = url;

        var result = await productRepo.addProduct(addProductInputEntity);
        result.fold(
          (fail) {
            emit(AddProductFailure(message: fail.message));
          },
          (seucces) {
            emit(
              AddProductSuccess(addProductInputEntity: addProductInputEntity),
            );
          },
        );
      },
    );
  }
}
