import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageFile extends StatefulWidget {
  const ImageFile({super.key, required this.onImagePicked});
  final ValueChanged<File?> onImagePicked;
  @override
  State<ImageFile> createState() => _ImageFileState();
}

class _ImageFileState extends State<ImageFile> {
  bool isLoading = false;
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          try {
            isLoading = true;
            setState(() {});
            await pickImage();

            isLoading = false;
            setState(() {});
          } on Exception catch (e) {
            e.toString();
            ScaffoldMessenger.of(
              // ignore: use_build_context_synchronously
              context,
            ).showSnackBar(SnackBar(content: Text('Error picking image: $e')));
          }
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey),
              ),
              child: imageFile != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(imageFile!, fit: BoxFit.cover),
                    )
                  : Icon(Icons.image, size: 100, color: Colors.grey),
            ),

            Visibility(
              visible: imageFile != null,
              child: IconButton(
                onPressed: () {
                  imageFile = null;
                  widget.onImagePicked(imageFile);
                  setState(() {});
                },
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    imageFile = image != null ? File(image.path) : null;
    widget.onImagePicked(imageFile);
  }
}
