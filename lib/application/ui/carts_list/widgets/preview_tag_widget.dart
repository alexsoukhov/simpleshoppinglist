import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreviewTagWidget extends StatelessWidget {
  final String label;

  const PreviewTagWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Theme.of(context).colorScheme.primaryContainer,
          width: .5,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primaryFixedDim,
          fontSize: 11,
        ),
      ),
    );
  }
}
