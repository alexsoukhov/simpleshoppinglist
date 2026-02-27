import 'package:flutter/material.dart';

import '../../../data/models/cart_item.dart';
import '../../../generated/l10n.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({
    super.key,
    this.onLongPress,
    this.onDelete,
    required this.cart,
    required this.index,
  });

  final CartItem cart;
  final int index;
  final VoidCallback? onLongPress;
  final VoidCallback? onDelete;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
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
                      onLongPress: widget.onLongPress,
                      title: Text(
                        widget.cart.value,
                        style: TextStyle(
                          decoration: widget.cart.marked
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
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
