import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class CartNameInputWidget extends StatefulWidget {
  const CartNameInputWidget({
    super.key,
    this.onAdd,
    this.onMenu,
    required this.onCallback,
  });

  final void Function(String value)? onAdd;
  final VoidCallback? onMenu;
  final FutureOr<List<String>?> Function(String search) onCallback;

  @override
  State<CartNameInputWidget> createState() => _CartNameInputWidgetState();
}

class _CartNameInputWidgetState extends State<CartNameInputWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool clear = false;

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
      clear = _textEditingController.text.isNotEmpty;
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
              child: TypeAheadField<String>(
                hideOnSelect: false,
                focusNode: _focusNode,
                suggestionsCallback: widget.onCallback,
                controller: _textEditingController,
                hideOnEmpty: true,
                builder: (context, controller, focusNode) => TextField(
                  onSubmitted: (_) {
                    widget.onAdd?.call(_textEditingController.text);
                    _textEditingController.text = "";
                  },
                  onTapUpOutside: (_) => {focusNode.unfocus()},
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "",
                  ),
                  textInputAction: TextInputAction.done,
                ),
                decorationBuilder: (context, child) => Material(
                  type: MaterialType.card,
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  elevation: 4,
                  child: child,
                ),
                itemBuilder: (context, item) => ListTile(title: Text(item)),
                onSelected: (String value) {
                  _textEditingController.text += " $value";
                },
              ),
            ),
            if (clear)
              IconButton(
                onPressed: _textEditingController.clear,
                icon: Icon(Icons.clear),
              ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _focusNode.unfocus();
                widget.onAdd?.call(_textEditingController.text);
                _textEditingController.text = "";
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _focusNode.unfocus();
                widget.onMenu?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
