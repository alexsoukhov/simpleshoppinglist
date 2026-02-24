import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

import '../../../data/models/cart_item.dart';

part 'cart_item_dto.freezed.dart';

@freezed
abstract class CartItemDto with _$CartItemDto {
  const factory CartItemDto({
    @HiveField(0) required String id,
    @HiveField(1) required String value,
    @HiveField(2) required DateTime date,
    @HiveField(3) required bool marked,
  }) = _CartItemDto;
}

extension CartItemX on CartItem {
  CartItemDto toDto() => CartItemDto(
    id: id,
    value: value,
    date: date,
    marked: marked,
  );
}

extension CartItemDtoX on CartItemDto {
  CartItem toModel() => CartItem(
    id: id,
    value: value,
    date: date,
    marked: marked,
  );
}
