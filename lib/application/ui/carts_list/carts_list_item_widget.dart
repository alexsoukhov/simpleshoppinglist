import 'package:flutter/material.dart';

import '../../../data/models/cart.dart';
import '../../../generated/l10n.dart';

class CartsListItemWidget extends StatefulWidget {
  const CartsListItemWidget({
    super.key,
    this.onPressed,
    this.onDelete,
    this.onEdit,
    required this.cart,
    required this.selectedCart,
    required this.index,
  });

  final Cart cart;
  final Cart? selectedCart;
  final int index;
  final VoidCallback? onPressed;
  final VoidCallback? onDelete;
  final VoidCallback? onEdit;

  @override
  State<CartsListItemWidget> createState() => _CartsListItemWidgetState();
}

class _CartsListItemWidgetState extends State<CartsListItemWidget> {
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        color: widget.cart == widget.selectedCart
            ? Theme.of(context).highlightColor
            : Theme.of(context).primaryColor,
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
              (BuildContext context, MenuController controller, Widget? child) {
                final String desc = widget.cart.items
                    .where((e) => !e.marked)
                    .take(10)
                    .fold("", (e1, e2) => "$e1 ${e2.value}");
                return ListTile(
                  selected: widget.cart == widget.selectedCart,
                  onTap: widget.onPressed,
                  onLongPress: () => _menuController.open(),
                  title: Text(widget.cart.name),
                  subtitle: desc.isNotEmpty
                      ? Text(maxLines: 1, overflow: TextOverflow.ellipsis, desc)
                      : null,
                  //TODO(AS):
                  /*trailing: ReorderableDragStartListener(
                      index: widget.index,
                      child: Icon(Icons.drag_handle),
                    ),*/
                );
              },
          menuChildren: [
            ListTile(
              title: Text(S.of(context).remove_item),
              onTap: () {
                _menuController.close();
                widget.onDelete?.call();
              },
            ),
            ListTile(
              title: Text(S.of(context).edit_item),
              onTap: () {
                _menuController.close();
                widget.onEdit?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
