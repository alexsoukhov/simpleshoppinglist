import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:simpleshoppinglist/domain/carts_repository.dart';

import '../../sources/hive/dto/cart_dto.dart';
import '../../sources/hive/hive_source.dart';
import '../models/cart.dart';

class CartsRepositoryImpl implements CartsRepository {
  CartsRepositoryImpl(this._hiveSource) {
    _notifySelectedCart();
  }

  final HiveSource _hiveSource;
  Cart? _selectedCart;


  @override
  Future<List<Cart>> getCarts() async =>
      (await _hiveSource.carts).map((e) => e.toModel()).toList();

  @override
  Cart? getCart(int id) => _hiveSource.getCart(id)?.toModel();

  @override
  Future<void> clear() => _hiveSource.clearCarts();

  @override
  Future<void> add(Cart ru) {
    return _hiveSource.addCart(ru.toDto());
  }

  @override
  Stream<List<Cart>> get cartsStream =>
      _hiveSource.cartsStream.map((e) => e.map((e) => e.toModel()).toList());

  @override
  int get getCount => _hiveSource.cartsCount;

  @override
  Cart? get selectedCart => _selectedCart;

  @override
  set selectedCart(Cart? value) {
    _selectedCart = value;

    _notifySelectedCart();
  }

  @override
  Future<void> remove(Cart cart) => _hiveSource.removeCart(cart.toDto());

  final StreamController<Cart?> _selectedCartStreamController =
      BehaviorSubject();

  @override
  Stream<Cart?> get selectedCartStream => _selectedCartStreamController.stream;

  @override
  void saveSelectedCart(Cart cart) {
    _hiveSource.setCart(cart.toDto());

    selectedCart = cart;
  }

  @override
  void saveCart(Cart cart) {
    _hiveSource.setCart(cart.toDto());
  }

  @override
  Future<List<String>> getSuggestions() async {
    return (await _hiveSource.carts).expand((e) => e.items.map((e) => e.value)).toSet().toList();
  }

  void _notifySelectedCart() {
    _selectedCartStreamController.sink.add(_selectedCart);
  }
}
