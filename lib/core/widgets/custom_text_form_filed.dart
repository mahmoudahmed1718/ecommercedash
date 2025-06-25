import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String name;
  final TextInputType textType;
  final int maxLines;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,
    required this.name,
    this.textType = TextInputType.text,
    this.maxLines = 1,
    this.onSaved,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: name,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        filled: true,
        fillColor: Colors.white,
      ),
      style: const TextStyle(fontSize: 16, color: Colors.black),
      cursorColor: Colors.black,
      keyboardType: textType,
      maxLines: maxLines,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field cannot be empty';
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
