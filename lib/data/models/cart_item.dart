import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required String id,
    required DateTime date,
    @Default('') String value,
    @Default(false) bool marked,
  }) = _CartItem;
}
