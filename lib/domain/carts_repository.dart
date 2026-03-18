import 'dart:async';

import '../data/models/cart.dart';

abstract class CartsRepository {
  Future<List<Cart>> getCarts();

  Cart? getCart(int id);

  Future<void> clear();

  Future<void> add(Cart ru);

  Stream<List<Cart>> get cartsStream;

  int get getCount;

  Cart? get selectedCart;

  set selectedCart(Cart? value);

  Future<void> remove(Cart cart);

  Stream<Cart?> get selectedCartStream;

  void saveSelectedCart(Cart cart);

  void saveCart(Cart cart);

  Future<List<String>> getSuggestions();
}
