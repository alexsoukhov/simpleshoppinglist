import 'package:flutter/material.dart';

import '../../../../data/models/cart_item.dart';
import '../../../../generated/l10n.dart';
import '../../theme/styles.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({
    super.key,
    this.onLongPress,
    this.onDelete,
    this.onEdit,
    required this.cart,
    required this.index,
  });

  final CartItem cart;
  final int index;
  final VoidCallback? onLongPress;
  final VoidCallback? onDelete;
  final VoidCallback? onEdit;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
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
                margin: const EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                  color: Styles.cardBackgroundColor(context),
                  borderRadius: Styles.borderRadius,
                  border: Border.all(
                    color: Styles.borderColor(context),
                    width: 1,
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: Styles.borderRadius,
                    onTap: () => _menuController.open(),
                    onLongPress: widget.onLongPress,
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
                              widget.cart.value,
                              style: TextStyle(
                                decoration: widget.cart.marked
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),
                          ),
                          ReorderableDragStartListener(
                            index: widget.index,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
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
    );
  }
}
