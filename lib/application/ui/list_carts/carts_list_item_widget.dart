import 'package:flutter/material.dart';

import '../../../data/models/cart.dart';

class CartsListItemWidget extends StatelessWidget {
  const CartsListItemWidget({
    super.key,
    this.onPressed,
    required this.cart,
    required this.selectedCart,
    required this.index,
  });

  final Cart cart;
  final Cart? selectedCart;
  final int index;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: cart == selectedCart
          ? Theme.of(context).highlightColor
          : Theme.of(context).primaryColor,
      key: ObjectKey(cart),
      child: ListTile(
        onTap: onPressed,
        title: Text(cart.name),
        trailing: ReorderableDragStartListener(
          index: index,
          child: Icon(Icons.drag_handle),
        ),
      ),
    );
  }
}
