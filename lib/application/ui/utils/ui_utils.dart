import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simpleshoppinglist/application/common/theme.dart';
import 'package:simpleshoppinglist/generated/l10n.dart';

class UIUtils {
  static void showToast(
    BuildContext context,
    String text, {
    Color? background,
  }) {
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
                style: FontStyles.fontNormal500.copyWith(
                  color: ThemeColors.toastText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    final fToast = FToast();
    fToast.init(context);

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }

  static void displayError(
    BuildContext context, {
    int code = -1,
    String value = '',
  }) {
    if (value.isEmpty) {
      String error = S.of(context).error_general;
      if (code != -1) {
        error += ' ($code)';
      }
      showToast(context, error, background: ThemeColors.toastBackground);
    } else {
      showToast(context, value, background: ThemeColors.toastBackground);
    }
  }

  static Future<String?> editValueDialog(
    BuildContext context,
    String value,
  ) async => await showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      final TextEditingController textEditingController = TextEditingController(
        text: value,
      );

      return AlertDialog(
        content: TextField(controller: textEditingController, autofocus: true),
        actions: <Widget>[
          TextButton(
            child: Text(S.of(context).cancel),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text(S.of(context).save),
            onPressed: () {
              Navigator.of(context).pop(textEditingController.text);
            },
          ),
        ],
      );
    },
  );
}
