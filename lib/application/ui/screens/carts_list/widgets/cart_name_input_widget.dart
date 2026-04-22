import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../../../generated/l10n.dart';
import '../../../common/widgets/border_icon_button.dart';
import '../../../theme/dimensions.dart';
import '../../../theme/styles.dart';

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
    _textEditingController.dispose();
    _focusNode.dispose();

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
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.paddingMainHorizontal,
      ),
      child: Row(
        children: [
          Expanded(
            child: TypeAheadField<String>(
              offset: const Offset(0, 8),
              hideOnSelect: false,
              focusNode: _focusNode,
              suggestionsCallback: widget.onCallback,
              controller: _textEditingController,
              hideOnEmpty: true,
              builder: (context, controller, focusNode) => SizedBox(
                height: Dimensions.inputHeight,
                child: TextField(
                  onSubmitted: (_) {
                    widget.onAdd?.call(_textEditingController.text);
                    _textEditingController.text = "";
                  },
                  onTapUpOutside: (_) => {focusNode.unfocus()},
                  controller: controller,
                  focusNode: focusNode,
                  style: Styles.textMedium(context),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Styles.cardBackgroundColor(context),
                    hintText: S.of(context).new_list,
                    hintStyle: Styles.textMedium(
                      context,
                    )?.copyWith(color: Styles.textColorDim(context)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: Dimensions.borderRadius,
                      borderSide: BorderSide(
                        color: Styles.borderColorSmall(context),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: Dimensions.borderRadius,
                      borderSide: BorderSide(
                        color: Styles.borderColorSmall(context),
                        width: 1,
                      ),
                    ),
                    suffixIcon: clear
                        ? IconButton(
                            iconSize: Dimensions.iconSize,
                            onPressed: _textEditingController.clear,
                            icon: const Icon(Icons.clear),
                          )
                        : null,
                    isDense: false,
                  ),
                  textInputAction: TextInputAction.done,
                ),
              ),
              decorationBuilder: (context, child) => Container(
                decoration: BoxDecoration(
                  color: Styles.cardBackgroundColor(context),
                  borderRadius: Dimensions.borderRadius,
                  border: Border.all(
                    color: Styles.borderColorSmall(context),
                    width: 1,
                  ),
                ),
                child: child,
              ),
              itemBuilder: (context, item) => ListTile(
                title: Text(
                  item,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textMedium(context),
                ),
              ),
              onSelected: (String value) {
                _textEditingController.text += " $value";
              },
            ),
          ),
          const SizedBox(width: Dimensions.gapHorizontal),
          BorderIconButton(
            onTap: () {
              _focusNode.unfocus();
              widget.onAdd?.call(_textEditingController.text);
              _textEditingController.text = "";
            },
            icon: Icons.add,
          ),
          const SizedBox(width: Dimensions.gapHorizontal),
          BorderIconButton(
            onTap: () {
              _focusNode.unfocus();
              widget.onMenu?.call();
            },
            icon: Icons.settings_outlined,
          ),
        ],
      ),
    );
  }
}
