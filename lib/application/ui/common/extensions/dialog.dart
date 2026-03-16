import 'package:flutter/material.dart';
import 'package:simpleshoppinglist/generated/l10n.dart';

extension DialogContext on BuildContext {
  Future<String?> editValueDialog(String value) async =>
      await showDialog<String>(
        context: this,
        barrierDismissible: false,
        builder: (BuildContext context) {
          final TextEditingController textEditingController =
              TextEditingController(text: value);

          return AlertDialog(
            content: TextField(
              controller: textEditingController,
              autofocus: true,
            ),
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
