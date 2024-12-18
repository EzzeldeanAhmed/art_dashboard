import 'package:dashboard/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
    this.maxLines,
  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final int? maxLines;
  final Function(String?)? onSaved;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onSaved: onSaved,
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is requied";
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: true,
        hintStyle: TextStyles.bold13.copyWith(
          color: const Color(0XFF949D9E),
        ),
        fillColor: const Color(0xFFF9FAFA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFE6E9E9),
          ),
        ),
      ),
    );
  }
}
