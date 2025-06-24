import 'dart:io';
import 'package:ecommercedash/core/widgets/custom_button.dart';
import 'package:ecommercedash/core/widgets/custom_text_form_filed.dart';
import 'package:ecommercedash/core/widgets/snak_bar.dart';
import 'package:ecommercedash/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:ecommercedash/features/add_product/presentation/manger/add_product/add_product_cubit.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/image_file.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/is_checked_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, code, description;
  late double price;
  File? image;
  bool ischecked = false;
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
              textType: TextInputType.text,
              onSaved: (value) {
                name = value!;
              },
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product price',
              textType: TextInputType.number,
              onSaved: (value) {
                price = double.parse(value!);
              },
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product code',
              textType: TextInputType.number,
              onSaved: (value) {
                code = value!;
              },
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              name: 'Product description',
              textType: TextInputType.text,
              maxLines: 5,
              onSaved: (value) {
                description = value!;
              },
            ),
            const SizedBox(height: 16),

            IsCheckedBox(onchanged: (value) {}),
            const SizedBox(height: 16),
            ImageFile(onImagePicked: (imageFile) {}),
            const SizedBox(height: 24),
            CustomButton(
              onpressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
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
                  AddProductInputEntity addProductInputEntity =
                      AddProductInputEntity(
                        name: name,
                        description: description,
                        price: price,
                        code: code,
                        imageFile: image!,
                        isFeatured: ischecked ? 'yes' : 'no',
                      );
                  context.read<AddProductCubit>().addProduct(
                    addProductInputEntity,
                  );
                  snackBarMethod(context, 'Product added successfully');
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
