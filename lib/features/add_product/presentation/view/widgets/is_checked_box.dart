import 'package:ecommercedash/core/utils/app_colors.dart';
import 'package:ecommercedash/core/utils/text_styles.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class IsCheckedBox extends StatefulWidget {
  const IsCheckedBox({super.key, required this.onchanged});
  final ValueChanged<bool> onchanged;

  @override
  State<IsCheckedBox> createState() => _IsCheckedBoxState();
}

class _IsCheckedBoxState extends State<IsCheckedBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            setState(() {
              widget.onchanged(value);
              isTermsAccepted = value;
            });
          },
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'I accept ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
