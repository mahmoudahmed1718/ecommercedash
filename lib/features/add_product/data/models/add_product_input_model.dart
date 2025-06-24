import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';

class AddProductInputModel extends AddProductInputEntity {
  AddProductInputModel({
    required super.name,
    required super.description,
    required super.price,
    required super.code,
    required super.imageFile,
    required super.isFeatured,
    required super.isOrgainic,
    super.imageUrl,
    required super.monthExpires,
    required super.numberOfCalories,
    required super.unitAmount,
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
      monthExpires: entity.monthExpires,
      numberOfCalories: entity.numberOfCalories,
      unitAmount: entity.unitAmount,
      isOrgainic: entity.isOrgainic,
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
      'monthExpires': monthExpires,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrgainic,
      'avergeRating': avergeRating,
      'rangeCount': rangeCount,
    };
  }
}
