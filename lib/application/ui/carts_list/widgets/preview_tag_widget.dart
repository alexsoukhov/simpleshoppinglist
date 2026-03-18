import 'package:flutter/material.dart';

import '../../theme/styles.dart';

class PreviewTagWidget extends StatelessWidget {
  const PreviewTagWidget({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: Styles.cardBackgroundColor(context),
        borderRadius: Styles.borderRadiusPreview,
        border: Border.all(color: Styles.borderColorSmall(context), width: .5),
      ),
      child: Text(
        label,
        style: TextStyle(color: Styles.textColorDim(context), fontSize: 11),
      ),
    );
  }
}
