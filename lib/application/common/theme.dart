import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoThemeData cupertinoThemeLight() => const CupertinoThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: ThemeColors.background,
      primaryColor: ThemeColors.accent,
      textTheme: CupertinoTextThemeData(
        primaryColor: ThemeColors.accent,
        textStyle: TextStyle(
          fontSize: 16,
          color: ThemeColors.accent,
        ),
      ),
    );

extension ThemeDataX on ThemeData {
  Color getColor(Color color) => color;
}

extension BuildContextX on BuildContext {
  Color getColor(Color color) => Theme.of(this).getColor(color);
}

abstract class ThemeColors {
  static const primary = ColorPalette.black;
  static const background = ColorPalette.white;
  static const accent = ColorPalette.black;
  static const secondary = ColorPalette.white;
  static const secondaryBackground = ColorPalette.blue800;
  static const inputFieldBackground = ColorPalette.gray100;
  static const inputFieldHintText = ColorPalette.gray500;
  static const inputFieldHintText2 = ColorPalette.gray700;
  static const inputFieldFocusedBorder = ColorPalette.blue300;
  static const inputFieldBorder = ColorPalette.gray500;
  static const warningBackground = ColorPalette.red100;
  static const warningBorder = ColorPalette.red500;

  // Buttons
  static const buttonLightBackground = ColorPalette.white;
  static const buttonLightBorder = ColorPalette.gray500;
  static const buttonLightText = ColorPalette.black;

  static final buttonLightBackgroundDisabled =
      ColorPalette.white.withValues(alpha: 0.5);
  static final buttonLightBorderDisabled =
      ColorPalette.gray500.withValues(alpha: 0.5);
  static final buttonLightTextDisabled =
      ColorPalette.black.withValues(alpha: 0.5);

  static const buttonLightBackgroundPressed = ColorPalette.white;
  static const buttonLightBorderPressed = ColorPalette.gray500;
  static const buttonLightTextPressed = ColorPalette.gray700;

  static const buttonBackground = ColorPalette.blue800;
  static const buttonBorder = ColorPalette.blue800;
  static const buttonText = ColorPalette.white;

  static final buttonBackgroundDisabled =
      ColorPalette.blue800.withValues(alpha: 0.5);
  static final buttonBorderDisabled =
      ColorPalette.blue800.withValues(alpha: 0.5);
  static final buttonTextDisabled = ColorPalette.white.withValues(alpha: 0.5);

  static const buttonBackgroundPressed = ColorPalette.blue900;
  static const buttonBorderPressed = ColorPalette.blue900;
  static const buttonTextPressed = ColorPalette.white;

  static const filterButtonDefault = ColorPalette.gray100;

  static const error = ColorPalette.red500;

  static const errorBackground = ColorPalette.red300;
  static const errorPopupColor = ColorPalette.white;

  static const pagerDotDefault = ColorPalette.gray200;
  static const pagerDotSelected = ColorPalette.blue800;
  static const pagerDotError = ColorPalette.red500;

  static const dialogButtonNegative = ColorPalette.blue300;
  static const dialogButtonPositive = ColorPalette.red500;

  static const tabItemSelectedText = ColorPalette.blue500;
  static const tabItemText = ColorPalette.gray700;

  static const reqPanelSubtitle = ColorPalette.gray700;
  static const reqPanelText = ColorPalette.black;
  static const reqPanelTextUnderline = ColorPalette.blue300;
  static const reqSubtitle = ColorPalette.gray500;

  static const switchOn = ColorPalette.blue800;
  static const switchOff = ColorPalette.gray500;

  static const divider = ColorPalette.gray100;
  static const divider2 = ColorPalette.gray200;
  static const divider3 = ColorPalette.gray500;

  static const imageFileName = ColorPalette.gray700;
  static const imageErrorBackground = ColorPalette.gray200;
  static const imageErrorBackgroundBlack = Colors.black;
  static const imageErrorText = ColorPalette.gray700;
  static const imageHeader = Color(0xFF212121);

  static const tabIndicator = ColorPalette.blue800;

  static const imageSizeBackground = ColorPalette.blue900;
  static const spQuantityBackground = ColorPalette.green500;

  static const notificationUnreadBackground = ColorPalette.gray50;
  static const notificationOpenRequest = ColorPalette.blue300;
  static const notificationCountBackground = ColorPalette.red300;
  static const notificationCount = ColorPalette.white;

  static const imageOrderBackground = ColorPalette.blue300;
  static const imageOrderBorder = ColorPalette.white;
  static const imageOrder = ColorPalette.white;

  static const toastBackground = ColorPalette.blue900;
  static const toastErrorBackground = ColorPalette.red500;
  static const toastText = Colors.white;

  // audits
  static const auditPointsBackground = ColorPalette.green500;
  static const auditViolationsBackground = ColorPalette.red500;
  static const auditStepsBackground = ColorPalette.gray500;
  static const monthSelectedBackground = ColorPalette.blue300;
  static const monthBackground = Colors.transparent;
  static const monthDisabledText = ColorPalette.gray500;

  static const tabAuditsItemSelectedText = ColorPalette.blue800;
  static const tabAuditsItemText = ColorPalette.gray700;

  static const executorRoleText = ColorPalette.gray700;

  static const rulePositiveBackground = ColorPalette.green500;
  static const ruleNegativeBackground = ColorPalette.red500;
  static const ruleNotApplicableBackground = ColorPalette.gray700;

  static const answerBackground = ColorPalette.gray200;
  static const questionsBackground = ColorPalette.gray500;

  static const switchOffThumb = ColorPalette.gray100;
  static const switchOffTrack = ColorPalette.gray500;

  static const ruDistanceBackground = ColorPalette.yellow300;

  static const dateRangeBackground = ColorPalette.blue100;

  static const supervisorMainGreen = ColorPalette.green500;
  static const supervisorMainOrange = ColorPalette.orange500;
  static const supervisorMainDarkGray = ColorPalette.gray700;
  static const supervisorMainGray = ColorPalette.gray500;
  static const supervisorMainRed = ColorPalette.red500;

  static const supervisorStoppedFilterUnselected = Color(0xFF99A0AB);

  static const supervisorTimesheetGreenBk = Color(0xFFECF9F2);
  static const supervisorTimesheetBlueBk = Color(0xFFF6F7FB);
  static const supervisorTimesheetRedBk = Color(0xFFFFDBDB);
  static const supervisorTimesheetOrangeBk = Color(0xFFFFF0E2);

  static const wheelSliderText = Color(0xFF222222);

  static const cupertinoPickerSelector = Color(0xFFDDDFE3);

  static const changedTimeBackground = Color(0xFFFFF0E2);
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

abstract class Shadows {
  static final shadowRegular = BoxShadow(
    color: const Color(0xFF343D57).withValues(alpha: 0.05),
    spreadRadius: 0,
    blurRadius: 12,
    offset: const Offset(0, -4), // changes position of shadow
  );

  static final shadowToast = BoxShadow(
    color: const Color(0x32333A14).withValues(alpha: 0.08),
    spreadRadius: 0,
    blurRadius: 14,
    offset: const Offset(0, 6), // changes position of shadow
  );
}
