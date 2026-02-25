import 'package:flutter/material.dart';

import '../../../data/models/cart.dart';
import '../../../generated/l10n.dart';

class CartsListItemWidget extends StatefulWidget {
  const CartsListItemWidget({
    super.key,
    this.onPressed,
    this.onDelete,
    required this.cart,
    required this.selectedCart,
    required this.index,
  });

  final Cart cart;
  final Cart? selectedCart;
  final int index;
  final VoidCallback? onPressed;
  final VoidCallback? onDelete;

  @override
  State<CartsListItemWidget> createState() => _CartsListItemWidgetState();
}

class _CartsListItemWidgetState extends State<CartsListItemWidget> {
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Material(
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
            (BuildContext context, MenuController controller, Widget? child) =>
                ListTile(
                  selected: widget.cart == widget.selectedCart,
                  onTap: widget.onPressed,
                  onLongPress: () => _menuController.open(),
                  title: Text(widget.cart.name),
                  subtitle: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    widget.cart.items
                        .where((e) => !e.marked)
                        .take(10)
                        .fold("", (e1, e2) => "$e1 ${e2.value}"),
                  ),
                  //TODO(AS):
                  /*trailing: ReorderableDragStartListener(
                    index: widget.index,
                    child: Icon(Icons.drag_handle),
                  ),*/
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
    );
  }
}
