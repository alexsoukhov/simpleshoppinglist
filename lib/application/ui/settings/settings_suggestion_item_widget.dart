import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class SettingsSuggestionItemWidget extends StatefulWidget {
  const SettingsSuggestionItemWidget({
    super.key,
    this.onDelete,
    required this.item,
    required this.index,
  });

  final String item;
  final int index;
  final VoidCallback? onDelete;

  @override
  State<SettingsSuggestionItemWidget> createState() => _SettingsSuggestionItemWidgetState();
}

class _SettingsSuggestionItemWidgetState extends State<SettingsSuggestionItemWidget> {
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: MenuAnchor(
          style: MenuStyle(
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
              (
                BuildContext context,
                MenuController controller,
                Widget? child,
              ) => Row(
                children: [
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      onTap: () => _menuController.open(),
                      onLongPress: () => _menuController.open(),
                      title: Text(widget.item),
                    ),
                  ),
                  ReorderableDragStartListener(
                    index: widget.index,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Icon(Icons.drag_handle),
                    ),
                  ),
                ],
              ),

          menuChildren: [
            ListTile(
              title: Text(S.of(context).remove_item),
              onTap: () {
                _menuController.close();
                widget.onDelete?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
