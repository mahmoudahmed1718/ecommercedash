import 'dart:io';
import 'package:ecommercedash/core/widgets/custom_button.dart';
import 'package:ecommercedash/core/widgets/custom_text_form_filed.dart';
import 'package:ecommercedash/core/widgets/snak_bar.dart';
import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:ecommercedash/features/add_product/presentation/manger/add_product/add_product_cubit.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/image_file.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/is_checked_box.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/is_product_organic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  // Controllers for all fields
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final codeController = TextEditingController();
  final descriptionController = TextEditingController();
  final monthExpiresController = TextEditingController();
  final unitAmountController = TextEditingController();
  final caloriesController = TextEditingController();

  File? image;
  bool isOraginic = false;
  bool ischecked = false;

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    codeController.dispose();
    descriptionController.dispose();
    monthExpiresController.dispose();
    unitAmountController.dispose();
    caloriesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product Name',
              controller: nameController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product price',
              textType: TextInputType.number,
              controller: priceController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product code',
              textType: TextInputType.number,
              controller: codeController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product description',
              maxLines: 5,
              controller: descriptionController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Month Expires',
              textType: TextInputType.number,
              controller: monthExpiresController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Unit Amount',
              textType: TextInputType.number,
              controller: unitAmountController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Number Of Calories',
              textType: TextInputType.number,
              controller: caloriesController,
            ),
            const SizedBox(height: 16),
            IsProductOraganic(
              onchanged: (value) {
                setState(() {
                  isOraginic = value;
                });
              },
            ),
            const SizedBox(height: 16),
            IsCheckedBox(
              onchanged: (value) {
                setState(() {
                  ischecked = value;
                });
              },
            ),
            const SizedBox(height: 16),
            ImageFile(
              onImagePicked: (imageFile) {
                setState(() {
                  image = imageFile;
                });
              },
            ),
            const SizedBox(height: 24),
            CustomButton(
              onpressed: () {
                if (formKey.currentState!.validate()) {
                  // Extract values
                  final name = nameController.text.trim();
                  final description = descriptionController.text.trim();
                  final price =
                      double.tryParse(priceController.text.trim()) ?? 0.0;
                  final code = codeController.text.trim();
                  final monthExpires =
                      num.tryParse(monthExpiresController.text.trim()) ?? 0;
                  final unitAmount =
                      num.tryParse(unitAmountController.text.trim()) ?? 0;
                  final numberOfCalories =
                      num.tryParse(caloriesController.text.trim()) ?? 0;

                  // Check required fields
                  if (image == null) {
                    snackBarMethod(context, 'Please select an image');
                    return;
                  }
                  if (!ischecked) {
                    snackBarMethod(
                      context,
                      'Please accept the terms and conditions',
                    );
                    return;
                  }

                  final addProductInputEntity = AddProductInputEntity(
                    name: name,
                    description: description,
                    price: price,
                    code: code,
                    imageFile: image!,
                    isFeatured: ischecked ? 'yes' : 'no',
                    monthExpires: monthExpires.toInt(),
                    numberOfCalories: numberOfCalories.toInt(),
                    unitAmount: unitAmount.toInt(),
                    isOrgainic: isOraginic,
                    reviews: [],
                  );

                  context.read<AddProductCubit>().addProduct(
                    addProductInputEntity,
                  );
                }
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              },
              text: 'Add Product',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
