import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onSubmitted;
  final String? hintText;
  final String? labelText;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextfield(
      {super.key,
      required this.controller,
      this.onSubmitted,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
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
