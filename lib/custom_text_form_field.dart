import 'package:flutter/material.dart';
import 'package:custom_view/custom_font_size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.validate,
    required this.hintText,
    required this.labelText,
    required this.textInputType,
    this.controller,
    this.maxLines,
    this.maxLength = 100,
  }) : super(key: key);

  final String? Function(String?)? validate;
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  final int? maxLines;
  final TextEditingController? controller;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      maxLines: maxLines,
      maxLength: maxLength,
      style: TextStyle(fontSize: CustomFontSize.f20),
      decoration: InputDecoration(
        hintText: hintText,
        counterStyle: TextStyle(color: Theme.of(context).primaryColor),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: CustomFontSize.f22,
        ),
        fillColor: Theme.of(context).backgroundColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      validator: validate,
    );
  }
}
