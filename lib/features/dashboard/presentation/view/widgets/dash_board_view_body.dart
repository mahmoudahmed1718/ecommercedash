import 'package:ecommercedash/core/widgets/custom_button.dart';
import 'package:ecommercedash/features/add_product/presentation/view/add_product_view.dart';
import 'package:flutter/material.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onpressed: () {
              Navigator.pushNamed(context, AddProductView.routeName);
            },
            text: 'Add Product',
          ),
        ],
      ),
    );
  }
}
