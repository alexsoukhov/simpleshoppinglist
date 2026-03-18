import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../common/widgets/border_icon_button.dart';
import '../../theme/styles.dart';

class ProductInputWidget extends StatefulWidget {
  const ProductInputWidget({
    super.key,
    required this.onBack,
    required this.allowBack,
    required this.onCallback,
    this.onAdd,
    this.enabled = true,
  });

  final bool enabled;
  final bool allowBack;
  final void Function(String value)? onAdd;
  final VoidCallback onBack;
  final FutureOr<List<String>?> Function(String search) onCallback;

  @override
  State<ProductInputWidget> createState() => _ProductInputWidgetState();
}

class _ProductInputWidgetState extends State<ProductInputWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        if (widget.allowBack)
          BorderIconButton(onTap: widget.onBack, icon: Icons.arrow_back),
        const SizedBox(width: 6),
        Expanded(
          child: Container(
            height: Styles.inputHeight,
            decoration: BoxDecoration(
              color: Styles.cardBackgroundColor(context),
              borderRadius: Styles.borderRadius,
              border: Border.all(
                color: Styles.borderColorSmall(context),
                width: 1,
              ),
            ),
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: AbsorbPointer(
                    absorbing: !widget.enabled,
                    child: TypeAheadField<String>(
                      animationDuration: const Duration(milliseconds: 1),
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
                        color: Theme.of(
                          context,
                        ).colorScheme.surfaceContainerLow,
                        elevation: 4,
                        child: child,
                      ),
                      itemBuilder: (context, item) => ListTile(
                        contentPadding: EdgeInsets.only(left: 16),
                        title: Text(item),
                        trailing: IconButton(
                          onPressed: () {
                            _focusNode.unfocus();
                            widget.onAdd?.call(_textEditingController.text);
                            _textEditingController.text = "";
                          },
                          icon: Icon(Icons.add),
                        ),
                      ),
                      onSelected: (String value) {
                        _textEditingController.text = value;
                      },
                    ),
                  ),
                ),
                if (_clear)
                  IconButton(
                    onPressed: _textEditingController.clear,
                    icon: Icon(Icons.clear),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 6),
        BorderIconButton(
          icon: Icons.add,
          onTap: () {
            _focusNode.unfocus();
            widget.onAdd?.call(_textEditingController.text);
            _textEditingController.text = "";
          },
        ),
      ],
    );
  }
}
