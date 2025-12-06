import 'package:flutter/material.dart';
import 'package:task/core/text_styles.dart';

class WeightAgeTile extends StatelessWidget {
  final String label;
  final double value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const WeightAgeTile({
    super.key,
    required this.label,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(label, style: TextStyles.text20),
          Text(
            '${value.toInt()}',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onAdd,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff8B8C9E),
                    shape: const CircleBorder(),
                    elevation: 3,
                    shadowColor: Colors.black,
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 25),
                ),
                ElevatedButton(
                  onPressed: onRemove,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff8B8C9E),
                    shape: const CircleBorder(),
                    elevation: 3,
                    shadowColor: Colors.black,
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
