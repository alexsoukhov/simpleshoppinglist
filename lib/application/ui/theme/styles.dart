import 'package:flutter/material.dart';

class Styles {

  static Color borderColor(BuildContext context) =>
      Theme
          .of(context)
          .colorScheme
          .primaryContainer;

  static Color borderColorSmall(BuildContext context) =>
      Theme
          .of(context)
          .colorScheme
          .primaryContainer;

  static Color cardBackgroundColor(BuildContext context) =>
      Theme
          .of(context)
          .colorScheme
          .surfaceContainerLow;

  static Color iconColor(BuildContext context) =>
      Theme
          .of(context)
          .colorScheme
          .primary;

  static Color textColorSmall(BuildContext context) =>
      Theme
          .of(context)
          .colorScheme
          .primary;

  static Color textColorDim(BuildContext context) =>
      Theme
          .of(context)
          .colorScheme
          .primaryFixedDim;

  static const double iconSize = 16.0;
  static const double inputHeight = 36.0;
  static const double buttonSize = 36.0;
}
