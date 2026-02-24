import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/cart.dart';
import 'cart_item_dto.dart';

part 'cart_dto.freezed.dart';

@freezed
abstract class CartDto with _$CartDto {
  const factory CartDto({
    @Default(0) int index,
    required String id,
    required String name,
    required DateTime date,
    @Default(<CartItemDto>[]) List<CartItemDto> items,
  }) = _CartDto;
}

extension ShoppingListX on Cart {
  CartDto toDto() => CartDto(
    index: index,
    id: id,
    name: name,
    date: date,
    items: items.map((e) => e.toDto()).toList(),
  );
}

extension CartDtoX on CartDto {
  Cart toModel() => Cart(
    index: index,
    id: id,
    name: name,
    date: date,
    marked: items.every((e) => e.marked),
    items: items.map((e) => e.toModel()).toList(),
  );
}
