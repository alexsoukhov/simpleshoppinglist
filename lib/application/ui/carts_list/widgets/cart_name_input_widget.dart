import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../../generated/l10n.dart';
import '../../common/widgets/border_icon_button.dart';

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
      child: Row(
        children: [
          // Поле ввода
          Expanded(
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TypeAheadField<String>(
                      offset: Offset(0, 8),
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
                        style: const TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          hintText: S.of(context).new_list,
                          hintStyle: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryFixedDim,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                      decorationBuilder: (context, child) => Container(
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.surfaceContainerLow,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,
                            width: 1,
                          ),
                        ),
                        child: child,
                      ),
                      itemBuilder: (context, item) => ListTile(
                        title: Text(
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryFixedDim,
                          ),
                          item,
                        ),
                      ),
                      onSelected: (String value) {
                        _textEditingController.text += " $value";
                      },
                    ),
                  ),
                  if (clear)
                    IconButton(
                      iconSize: 20,
                      onPressed: _textEditingController.clear,
                      icon: Icon(Icons.clear),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 6),
          BorderIconButton(
            onTap: () {
              _focusNode.unfocus();
              widget.onAdd?.call(_textEditingController.text);
              _textEditingController.text = "";
            },
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            borderColor: Theme.of(context).colorScheme.primaryContainer,
            child: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.primary,
              size: 18,
            ),
          ),
          const SizedBox(width: 6),
          BorderIconButton(
            onTap: () {
              _focusNode.unfocus();
              widget.onMenu?.call();
            },
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            borderColor: Theme.of(context).colorScheme.primaryContainer,
            child: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).colorScheme.primary,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
