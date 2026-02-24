import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: Colors.black,
        child: Text(
          text,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
