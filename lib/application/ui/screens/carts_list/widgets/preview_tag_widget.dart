import 'package:flutter/material.dart';
import 'package:simpleshoppinglist/application/ui/theme/dimensions.dart';

import '../../../theme/styles.dart';

class PreviewTagWidget extends StatelessWidget {
  const PreviewTagWidget({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: Styles.cardBackgroundColor(context),
        borderRadius: Dimensions.borderRadiusPreview,
        border: Border.all(color: Styles.borderColorSmall(context), width: .5),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Styles.textSmall(context)?.copyWith(color: Styles.textColorDim(context)),
      ),
    );
  }
}
