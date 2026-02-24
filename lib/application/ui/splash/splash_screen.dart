import 'package:flutter/material.dart';
import '../widgets/progress_circle.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
          color: Colors.black,
          child: const ProgressCircle()),
    );
  }
}
