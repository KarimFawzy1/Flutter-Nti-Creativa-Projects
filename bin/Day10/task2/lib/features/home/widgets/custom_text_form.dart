import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
  });

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}
