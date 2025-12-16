import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.validator,
  });

  final TextEditingController controller;
  final String label;
  final String? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        width: 335,
        height: 52.37,
        child: Material(
          elevation: 2,
          shadowColor: Colors.black.withValues(alpha: 0.10),
          borderRadius: BorderRadius.circular(59),
          child: TextFormField(
            controller: controller,
            validator: (value) {
              return validator;
            },
            decoration: InputDecoration(
              fillColor: const Color(0xFFF8F8F8),
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(59),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(59),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(59),
              ),
              labelText: label,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFD2D2D2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
