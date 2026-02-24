import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../sources/hive/hive_source.dart';
import '../data/models/cart.dart';
import '../sources/hive/dto/cart_dto.dart';

class CartsRepository {
  CartsRepository(this._hiveSource) {
    notifySelectedCart();
  }

  final HiveSource _hiveSource;

  static CartsRepository of(BuildContext context) =>
      context.read<CartsRepository>();

  Future<List<Cart>> getCarts() async =>
      (await _hiveSource.carts).map((e) => e.toModel()).toList();

  Cart? getCart(int id) => _hiveSource.getCart(id)?.toModel();

  Future<void> clear() => _hiveSource.clearCarts();

  Future<void> add(Cart ru) {
    return _hiveSource.addCart(ru.toDto());
  }

  Stream<List<Cart>> get cartsStream =>
      _hiveSource.cartsStream.map((e) => e.map((e) => e.toModel()).toList());

  int get getCount => _hiveSource.cartsCount;

  Cart? _selectedCart;

  Cart? get selectedCart => _selectedCart;

  set selectedCart(Cart? value) {
    _selectedCart = value;

    notifySelectedCart();
  }

  final StreamController<Cart?> _selectedCartStreamController =
      BehaviorSubject();

  Stream<Cart?> get selectedCartStream => _selectedCartStreamController.stream;

  void notifySelectedCart() {
    _selectedCartStreamController.sink.add(_selectedCart);
  }

  void saveSelectedCart(Cart cart) {
    _hiveSource.setCart(cart);

    selectedCart = cart;
  }

  Future<List<String>> getSuggestions() async {
    return (await _hiveSource.carts).expand((e) => e.items.map((e) => e.value)).toSet().toList();
  }
}
