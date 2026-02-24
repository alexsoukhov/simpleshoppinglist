import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';

import '../../data/models/cart.dart';
import 'dto/cart_dto.dart';

mixin CartsHiveSource {
  static const _cartsBoxName = 'carts_list_v1';

  Box<CartDto> get _cartsBox => Hive.box<CartDto>(_cartsBoxName);

  Future<void> clearCarts() => _cartsBox.clear();

  Future<CartDto> addCart(CartDto cart) async {
    CartDto inserted = cart.copyWith(index: await _cartsBox.add(cart));

    _cartsBox.put(inserted.index, inserted);

    return inserted;
  }

  int get cartsCount => _cartsBox.values.length;

  CartDto? getCart(int id) => _cartsBox.get(id);

  Future<void> setCart(Cart cart) async => _cartsBox.put(cart.index, cart.toDto());

  Future<List<CartDto>> get carts async => _cartsBox.values.toList();

  Stream<List<CartDto>> get cartsStream =>
      _cartsBox.watchAllValues().map((e) => e.toList());

  Cart? selectedCart;

  Future<void> openCartsBox() async {
    await Hive.openBox<CartDto>(_cartsBoxName);
  }
}

extension<T> on Box<T> {
  Stream<Iterable<T>> watchAllValues() =>
      watch().map((_) => values).startWith(values);
}
