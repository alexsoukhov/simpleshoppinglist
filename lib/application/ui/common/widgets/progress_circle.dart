import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  const ProgressCircle({super.key, this.color = Colors.black});

  final Color color;

  @override
  Widget build(BuildContext context) => Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color),
    ),
  );
}