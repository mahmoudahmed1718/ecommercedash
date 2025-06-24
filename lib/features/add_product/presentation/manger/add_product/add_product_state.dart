part of 'add_product_cubit.dart';

@immutable
sealed class AddProductState {}

final class AddProductInitial extends AddProductState {}

final class AddProductLoading extends AddProductState {}

final class AddProductSuccess extends AddProductState {
  final AddProductInputEntity addProductInputEntity;

  AddProductSuccess({required this.addProductInputEntity});
}

final class AddProductFailure extends AddProductState {
  final String message;

  AddProductFailure({required this.message});
}
