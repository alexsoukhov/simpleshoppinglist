import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../generated/l10n.dart';
import '../../theme/theme.dart';

extension ToastContext on BuildContext {
  void showToast(String text, {Color? background}) {
    final Widget toast = Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: background ?? ThemeColors.toastBackground,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(color: ThemeColors.toastText),
              ),
            ),
          ],
        ),
      ),
    );
    final fToast = FToast();
    fToast.init(this);

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }

  void displayError({int code = -1, String value = ''}) {
    if (value.isEmpty) {
      String error = S.of(this).error_general;
      if (code != -1) {
        error += ' ($code)';
      }
      showToast(error, background: ThemeColors.toastBackground);
    } else {
      showToast(value, background: ThemeColors.toastBackground);
    }
  }
}
