import 'package:flutter/material.dart';

import '../../../data/models/cart.dart';

class CartsListItemWidget extends StatelessWidget {
  const CartsListItemWidget({
    super.key,
    this.onPressed,
    required this.cart,
    required this.index,
  });

  final Cart cart;
  final int index;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
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
