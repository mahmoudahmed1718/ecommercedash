import 'package:flutter/material.dart';

class ImageFile extends StatelessWidget {
  const ImageFile({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey),
        ),
        child: Icon(Icons.image, size: 100, color: Colors.grey),
      ),
    );
  }
}
