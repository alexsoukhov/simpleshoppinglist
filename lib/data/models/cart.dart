import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_item.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    @Default(0) int index,
    required String id,
    required String name,
    required DateTime date,
    @Default(<CartItem>[]) List<CartItem> items,
    @Default(false) bool marked,
  }) = _Cart;

  int get doneCount => items.where((i) => i.marked).length;

  List<CartItem> get remaining => items.where((i) => !i.marked).toList();
}
