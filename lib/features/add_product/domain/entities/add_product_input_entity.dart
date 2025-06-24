import 'dart:io';

class AddProductInputEntity {
  final String name;
  final String description;
  final double price;
  final String code;
  final File imageFile;
  String? imageUrl;
  final String isFeatured;
  final int monthExpires;
  final bool isOrgainic = false;
  final int numberOfCalories;
  final int unitAmount;
  final num avergeRating = 0;
  final num rangeCount = 0;
  AddProductInputEntity({
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.imageFile,
    this.imageUrl,
    required this.isFeatured,
    required this.monthExpires,
    required this.numberOfCalories,
    required this.unitAmount,
  });
}
