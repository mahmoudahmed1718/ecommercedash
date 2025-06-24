import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';

class AddProductInputModel extends AddProductInputEntity {
  AddProductInputModel({
    required super.name,
    required super.description,
    required super.price,
    required super.code,
    required super.imageFile,
    required super.isFeatured,
    super.imageUrl,
  });

  factory AddProductInputModel.fromEntity(AddProductInputEntity entity) {
    return AddProductInputModel(
      name: entity.name,
      description: entity.description,
      price: entity.price,
      code: entity.code,
      imageFile: entity.imageFile,
      isFeatured: entity.isFeatured,
      imageUrl: entity.imageUrl,
    );
  }
  toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'code': code,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
    };
  }
}
