import 'package:flutter/material.dart';
import 'package:task1/core/color_manager.dart';

class ToolbarIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const ToolbarIcon({required this.icon, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: onPressed ?? () {},
        icon: Icon(icon, size: 20, color: ColorManager.textSecondary),
      ),
    );
  }
}
