import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../theme/dimensions.dart';
import '../../../theme/styles.dart';

class SuggestionItemWidget extends StatefulWidget {
  const SuggestionItemWidget({
    super.key,
    this.onDelete,
    this.onEdit,
    required this.item,
    required this.index,
  });

  final String item;
  final int index;
  final VoidCallback? onDelete;
  final VoidCallback? onEdit;

  @override
  State<SuggestionItemWidget> createState() => _SuggestionItemWidgetState();
}

class _SuggestionItemWidgetState extends State<SuggestionItemWidget> {
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      style: MenuStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          Styles.cardBackgroundColor(context),
        ),
        side: WidgetStatePropertyAll<BorderSide>(
          BorderSide(color: Styles.borderColor(context), width: 1),
        ),
        shape: WidgetStatePropertyAll<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        alignment: AlignmentGeometry.bottomLeft,
        padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.all(0)),
      ),
      alignmentOffset: Offset(10, 0),
      crossAxisUnconstrained: false,
      controller: _menuController,
      builder:
          (BuildContext context, MenuController controller, Widget? child) =>
          Container(
            margin: const EdgeInsets.only(bottom: Dimensions.gapVertical),
            decoration: BoxDecoration(
              color: Styles.cardBackgroundColor(context),
              //borderRadius: Dimensions.borderRadius,
              border: Border(
                bottom: BorderSide(
                  color: Styles.borderColor(context),
                  width: 1,
                ),
              ),
              /*border: Border.all(
                    color: Styles.borderColor(context),
                    width: 1,
                  ),*/
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                //borderRadius: Dimensions.borderRadius,
                onTap: () => _menuController.open(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          widget.item,
                        ),
                      ),
                      ReorderableDragStartListener(
                        index: widget.index,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.drag_handle),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      menuChildren: [
        ListTile(
          title: Row(
            children: [
              Icon(color: Styles.iconColor(context), Icons.delete),
              const SizedBox(width: 8),
              Text(S.of(context).remove_item),
            ],
          ),
          onTap: () {
            _menuController.close();
            widget.onDelete?.call();
          },
        ),
        ListTile(
          title: Row(
            children: [
              Icon(color: Styles.iconColor(context), Icons.edit),
              const SizedBox(width: 8),
              Text(S.of(context).edit_item),
            ],
          ),
          onTap: () {
            _menuController.close();
            widget.onEdit?.call();
          },
        ),
      ],
    );
  }
}
