part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.init() = CartEventInit;

  const factory CartEvent.createItem(String name) = CartEventCreateItem;

  const factory CartEvent.reorder(int oldIndex, int newIndex) = CartEventReorder;

  const factory CartEvent.toggle(CartItem item) = CartEventToggle;

  const factory CartEvent.delete(CartItem item) = CartEventDelete;
}
