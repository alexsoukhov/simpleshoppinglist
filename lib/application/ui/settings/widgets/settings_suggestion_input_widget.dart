import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SettingsSuggestionInputWidget extends StatefulWidget {
  const SettingsSuggestionInputWidget({super.key, this.onAdd});

  final void Function(String value)? onAdd;

  @override
  State<SettingsSuggestionInputWidget> createState() =>
      _SettingsSuggestionInputWidgetState();
}

class _SettingsSuggestionInputWidgetState
    extends State<SettingsSuggestionInputWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _clear = false;

  @override
  void initState() {
    super.initState();

    _textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_onTextChanged);

    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _clear = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "",
                ),
                textInputAction: TextInputAction.done,
              ),
            ),

            if (_clear)
              IconButton(
                onPressed: _textEditingController.clear,
                icon: Icon(Icons.clear),
              ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                widget.onAdd?.call(_textEditingController.text);
                _textEditingController.text = "";
              },
            ),
          ],
        ),
      ),
    );
  }
}
