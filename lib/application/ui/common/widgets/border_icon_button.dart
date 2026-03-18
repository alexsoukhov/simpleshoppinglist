import 'package:flutter/material.dart';

import '../../theme/styles.dart';

class BorderIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;

  const BorderIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.iconColor,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Styles.buttonSize,
      height: Styles.buttonSize,
      decoration: BoxDecoration(
        color: backgroundColor ?? Styles.backgroundColor(context),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: borderColor ?? Styles.borderColorSmall(context),
          width: 1,
        ),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor ?? Styles.iconColor(context),
          size: Styles.iconSize,
        ),
        onPressed: onTap,
      ),
    );
  }
}
