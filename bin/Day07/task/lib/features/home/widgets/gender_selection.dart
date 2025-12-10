import 'package:flutter/material.dart';
import 'package:task/core/text_styles.dart';

class GenderSelection extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function() onTap;
  final IconData icon;
  const GenderSelection({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.grey.withValues(alpha: 0.2)
                : Colors.grey.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Icon(icon, size: 150, color: Colors.white),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(label, style: TextStyles.text20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
