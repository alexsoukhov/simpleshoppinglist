import 'package:flutter/material.dart';

import '../../../theme/dimensions.dart';
import '../../../theme/styles.dart';

class SuggestionInputWidget extends StatefulWidget {
  const SuggestionInputWidget({super.key, this.onAdd});

  final void Function(String value)? onAdd;

  @override
  State<SuggestionInputWidget> createState() => _SuggestionInputWidgetState();
}

class _SuggestionInputWidgetState extends State<SuggestionInputWidget> {
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
    _textEditingController.dispose();

    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _clear = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.cardBackgroundColor(context),
        borderRadius: Dimensions.borderRadius,
        border: Border.all(color: Styles.borderColorSmall(context), width: 1),
      ),
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
    );
  }
}
