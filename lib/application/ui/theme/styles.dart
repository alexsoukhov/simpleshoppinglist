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

  static Color cardSelectedBackgroundColor(BuildContext context) =>
      Theme
          .of(context)
          .colorScheme
          .surfaceContainerHigh;

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


  static TextStyle? textSmall(BuildContext context) => Theme.of(context).primaryTextTheme.bodySmall;

  static TextStyle? textMedium(BuildContext context) => Theme.of(context).primaryTextTheme.bodyMedium;

  static TextStyle? textLarge(BuildContext context) => Theme.of(context).primaryTextTheme.bodyLarge;
}
