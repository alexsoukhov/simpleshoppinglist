import 'package:flutter/material.dart';

import '../../../data/models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
    this.onLongPress,
    required this.cart,
    required this.index,
  });

  final CartItem cart;
  final int index;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      key: ObjectKey(cart),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              onLongPress: onLongPress,
              title: Text(
                cart.value,
                style: TextStyle(
                  decoration: cart.marked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),

            ),
          ),
          ReorderableDragStartListener(
            index: index,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Icon(Icons.menu),
            ),
          ),
        ],
      ),
    );
  }
}
