import 'package:flutter_test/flutter_test.dart';
import 'package:simpleshoppinglist/data/models/cart.dart';
import 'package:simpleshoppinglist/data/models/cart_item.dart';

void main() {
  group('Cart Model Tests', () {
    test('doneCount should return 0 when there are no items', () {
      final cart = Cart(
        id: '1',
        name: 'Empty Cart',
        date: DateTime.now(),
        items: [],
      );

      expect(cart.doneCount, 0);
    });

    test('doneCount should return the correct number of marked items', () {
      final cart = Cart(
        id: '2',
        name: 'Mixed Cart',
        date: DateTime.now(),
        items: [
          CartItem(id: 'i1', date: DateTime.now(), value: 'Bread', marked: true),
          CartItem(id: 'i2', date: DateTime.now(), value: 'Milk', marked: false),
          CartItem(id: 'i3', date: DateTime.now(), value: 'Eggs', marked: true),
        ],
      );

      expect(cart.doneCount, 2);
    });

    test('remaining should return only items that are not marked', () {
      final item1 = CartItem(id: 'i1', date: DateTime.now(), value: 'Bread', marked: true);
      final item2 = CartItem(id: 'i2', date: DateTime.now(), value: 'Milk', marked: false);
      
      final cart = Cart(
        id: '3',
        name: 'Test Cart',
        date: DateTime.now(),
        items: [item1, item2],
      );

      final remaining = cart.remaining;
      expect(remaining.length, 1);
      expect(remaining.first.value, 'Milk');
      expect(remaining.first.marked, false);
    });

    test('remaining should return an empty list when all items are marked', () {
      final cart = Cart(
        id: '4',
        name: 'Completed Cart',
        date: DateTime.now(),
        items: [
          CartItem(id: 'i1', date: DateTime.now(), value: 'Bread', marked: true),
          CartItem(id: 'i2', date: DateTime.now(), value: 'Milk', marked: true),
        ],
      );

      expect(cart.remaining, isEmpty);
    });

    test('remaining should return all items when none are marked', () {
      final cart = Cart(
        id: '5',
        name: 'New Cart',
        date: DateTime.now(),
        items: [
          CartItem(id: 'i1', date: DateTime.now(), value: 'Bread', marked: false),
          CartItem(id: 'i2', date: DateTime.now(), value: 'Milk', marked: false),
        ],
      );

      expect(cart.remaining.length, 2);
    });
  });
}
