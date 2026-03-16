import 'package:flutter/material.dart';

class BorderIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final Color color;
  final Color borderColor;

  const BorderIconButton({super.key,
    required this.onTap,
    required this.child,
    required this.color,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: IconButton(icon: child, onPressed: onTap,),
    );
  }
}
