import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';

import 'dto/cart_item_dto.dart';

mixin CartItemsHiveSource {
  static const _cartItemsBoxName = 'cart_items_list_v1';

  Box<CartItemDto> get _cartItemsBox =>
      Hive.box<CartItemDto>(_cartItemsBoxName);

  Future<void> clearCartItems() => _cartItemsBox.clear();

  Future<void> addCartItem(CartItemDto cartItem) =>
      _cartItemsBox.put(cartItem.id, cartItem);

  int get cartsCount => _cartItemsBox.values.length;

  CartItemDto? getCartItem(String id) => _cartItemsBox.get(id);

  Future<List<CartItemDto>> get cartItems async =>
      _cartItemsBox.values.toList();

  Stream<List<CartItemDto>> get cartItemsStream =>
      _cartItemsBox.watchAllValues().map((e) => e.toList());

  Future<void> openCartItemsBox() async {
    await Hive.openBox<CartItemDto>(_cartItemsBoxName);
  }
}

extension<T> on Box<T> {
  Stream<Iterable<T>> watchAllValues() =>
      watch().map((_) => values).startWith(values);
}
