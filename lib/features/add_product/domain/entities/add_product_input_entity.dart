import 'dart:io';

class AddProductInputEntity {
  final String name;
  final String description;
  final double price;
  final String code;
  final File imageFile;
  final String? imageUrl;
  final String isFeatured;

  AddProductInputEntity({
    required this.name,
    required this.description,
    required this.price,
    required this.code,
    required this.imageFile,
    this.imageUrl,
    required this.isFeatured,
  });
}
