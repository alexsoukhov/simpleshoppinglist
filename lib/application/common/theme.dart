import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ThemeColors {
  static const toastBackground = ColorPalette.blue900;
  static const toastErrorBackground = ColorPalette.red500;
  static const toastText = Colors.white;
}

abstract class FontStyles {
  static const fontTitleLarge =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700);

  static const fontSize22 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w400);

  static const fontSize20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w600);

  static const fontTitle500 =
      TextStyle(fontSize: 18, height: 1.2, fontWeight: FontWeight.w500);

  static const fontTitleDialog =
      TextStyle(fontSize: 18, height: 1.2, fontWeight: FontWeight.w600);

  static const fontTitleBold =
      TextStyle(fontSize: 18, height: 1.2, fontWeight: FontWeight.w700);

  static const fontMedium =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  static const fontMediumUnderline = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);

  static const fontMedium500 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  static const fontMedium600 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

  static const fontNormal =
      TextStyle(fontSize: 14, height: 1.3, fontWeight: FontWeight.w400);

  static const fontNormal500 =
      TextStyle(fontSize: 14, height: 1.3, fontWeight: FontWeight.w500);

  static const fontNormal600 =
      TextStyle(fontSize: 14, height: 1.3, fontWeight: FontWeight.w600);

  static const fontSmall500 =
      TextStyle(fontSize: 10, height: 1.2, fontWeight: FontWeight.w500);

  static const fontSmall600 =
      TextStyle(fontSize: 10, height: 1.2, fontWeight: FontWeight.w600);

  static const fontSmall700 =
      TextStyle(fontSize: 11, height: 1.2, fontWeight: FontWeight.w600);

  static const fontSmall500_2 =
      TextStyle(fontSize: 12, height: 1.2, fontWeight: FontWeight.w500);

  static const fontNormalUnderline = TextStyle(
    fontSize: 14.0,
    height: 1.3,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
  );

  static const fontNormalBold =
      TextStyle(fontSize: 14, height: 1.3, fontWeight: FontWeight.w700);

  static const fontSmaller600 =
      TextStyle(fontSize: 12, height: 1.17, fontWeight: FontWeight.w600);

  static const fontSmallSemiBold =
      TextStyle(fontSize: 12, height: 1.17, fontWeight: FontWeight.w500);

  static const fontSmall =
      TextStyle(fontSize: 12, height: 1.17, fontWeight: FontWeight.w400);
}

abstract class ColorPalette {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const gray700 = Color(0xFF767679);
  static const gray500 = Color(0xFFBABABE);
  static const gray200 = Color(0xFFE6E6EA);
  static const gray100 = Color(0xFFF2F2F6);
  static const gray50 = Color(0xFFF8F8FA);

  static const blue900 = Color(0xFF0F1F3A);
  static const blue800 = Color(0xFF0A2751);
  static const blue500 = Color(0xFF2C447B);
  static const blue300 = Color(0xFF4666AF);
  static const blue200 = Color(0xFFDAE0EF);
  static const blue100 = Color(0xFFEDF0F7);

  static const red500 = Color(0xFFD1373B);
  static const red300 = Color(0xFFFF7373);
  static const red200 = Color(0xFFFFA8A8);
  static const red100 = Color(0xFFFFDBDB);

  static const orange500 = Color(0xFFEE8D34);
  static const orange300 = Color(0xFFF3B072);
  static const orange100 = Color(0xFFFBE5D0);

  static const yellow500 = Color(0xFFFCBD00);
  static const yellow300 = Color(0xFFFCE7A6);
  static const yellow100 = Color(0xFFFDF2CE);

  static const green500 = Color(0xFF44BF78);
  static const green100 = Color(0xFFDDF5E7);
}