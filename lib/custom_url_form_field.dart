import 'package:custom_view/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomUrlFormField extends CustomTextFormField {
  CustomUrlFormField({
    String? Function(String?)? validate,
    String? hintText,
    String? labelText,
    TextInputType? textInputType,
    int? maxLines,
    TextEditingController? controller,
    int? maxLength,
  }) : super(
          controller: controller,
          validate: validate,
          hintText: hintText ?? 'URL',
          labelText: labelText ?? 'Link para conteúdo externo',
          textInputType: textInputType ?? TextInputType.text,
          maxLines: maxLines ?? 1,
          maxLength: 2000,
        );
}
