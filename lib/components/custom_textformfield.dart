import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onSubmitted;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.onSubmitted,
      this.hintText,
      this.validator,
      this.prefixIcon,
      this.suffixIcon,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        // border default

        //     border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(35),
        //   borderSide: const BorderSide(color: Colors.amberAccent),
        // )

        //enabledBorder

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: const BorderSide(color: Colors.orange),
        ),

        //focusedBorder

        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: const BorderSide(color: Colors.pink)),

        //errorBorder
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: const BorderSide(color: Colors.red),
        ),

        //hintText
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey[500],
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: labelText,

        labelStyle: TextStyle(
          color: Colors.grey[500],
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
