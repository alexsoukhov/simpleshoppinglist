import 'package:flutter/material.dart';

import '../../theme/dimensions.dart';
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
      width: Dimensions.buttonSize,
      height: Dimensions.buttonSize,
      decoration: BoxDecoration(
        color: backgroundColor ?? Styles.cardBackgroundColor(context),
        borderRadius: Dimensions.borderRadius,
        border: Border.all(
          color: borderColor ?? Styles.borderColorSmall(context),
          width: 1,
        ),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor ?? Styles.iconColor(context),
          size: Dimensions.iconSize,
        ),
        onPressed: onTap,
      ),
    );
  }
}
