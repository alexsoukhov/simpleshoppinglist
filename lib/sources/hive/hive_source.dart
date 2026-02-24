import 'dart:async';

import 'package:hive_ce_flutter/adapters.dart';
import 'package:simpleshoppinglist/sources/hive/cart_items_hive_source.dart';
import 'package:simpleshoppinglist/sources/hive/hive_registrar.g.dart';

import 'carts_hive_source.dart';

class HiveSource with CartsHiveSource, CartItemsHiveSource {
  HiveSource._();

  static Future<HiveSource> create() async {
    final instance = HiveSource._();
    await instance._initialize();
    return instance;
  }

  Future<void> _initialize() async {
    await Hive.initFlutter();

    Hive.registerAdapters();

    await openCartsBox();
    await openCartItemsBox();

    //    await Hive.openLazyBox<Uint8List>(
    //  _imagesRawBoxName,
    //);
  }

  Future<void> dispose() => Hive.close();
}