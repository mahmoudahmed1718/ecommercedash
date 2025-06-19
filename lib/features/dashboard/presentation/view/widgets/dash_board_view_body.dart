import 'package:ecommercedash/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomButton(onpressed: () {}, text: 'Add Product')],
    );
  }
}
