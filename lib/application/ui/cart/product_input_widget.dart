import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../generated/l10n.dart';

class ProductInputWidget extends StatefulWidget {
  const ProductInputWidget({
    super.key,
    this.onPressed,
    required this.onCallback,
  });

  final void Function(String value)? onPressed;
  final FutureOr<List<String>?> Function(String search) onCallback;

  @override
  State<ProductInputWidget> createState() => _ProductInputWidgetState();
}

class _ProductInputWidgetState extends State<ProductInputWidget> {
  final TextEditingController _textEditingController = TextEditingController();
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
                suggestionsCallback: widget.onCallback,
                controller: _textEditingController,
                hideOnEmpty: true,
                builder: (context, controller, focusNode) => TextField(
                  onSubmitted: (_) {
                    widget.onPressed?.call(_textEditingController.text);
                  },
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
                  elevation: 4,
                  child: child,
                ),
                itemBuilder: (context, item) => ListTile(title: Text(item)),
                onSelected: (String value) {
                  _textEditingController.text = value;
                },
              ),
            ),

            /*TextField(
                onSubmitted: (_) {
                  widget.onPressed?.call(_textEditingController.text);
                },
                onTap: () {
                  if (_textEditingController.text.isEmpty) {
                    _textEditingController.text = DateTime.now().toString();
                    _textEditingController.selection = TextSelection(
                      baseOffset: 0,
                      extentOffset: _textEditingController.value.text.length,
                    );
                  }
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: S
                      .of(context)
                      .cart_name,
                  border: InputBorder.none,
                ),
                textInputAction: TextInputAction.done,
                autocorrect: false,
              ),
            ),*/
            if (clear)
              IconButton(
                onPressed: _textEditingController.clear,
                icon: Icon(Icons.clear),
              ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () =>
                  widget.onPressed?.call(_textEditingController.text),
            ),
          ],
        ),
      ),
    );
  }
}
