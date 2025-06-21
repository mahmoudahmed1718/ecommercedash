import 'package:ecommercedash/core/widgets/custom_text_form_filed.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/image_file.dart';
import 'package:flutter/material.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product Name',
              textType: TextInputType.text,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product price',
              textType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product code',
              textType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product description',
              textType: TextInputType.text,
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            ImageFile(
              onImagePicked: (imageFile) {
                // Handle the picked image file
                // You can save it to a state variable or process it as needed
              },
            ),
          ],
        ),
      ),
    );
  }
}
