part of 'carts_list_bloc.dart';

@freezed
class CartsListEvent with _$CartsListEvent {
  const factory CartsListEvent.init() = CartsListEventInit;

  const factory CartsListEvent.select(Cart cart) = CartsListEventSelect;

  const factory CartsListEvent.createList(String name) = CartsListEventCreateList;

  const factory CartsListEvent.reorder(int oldIndex, int newIndex) = CartsListEventReorder;

  const factory CartsListEvent.openCartPage() = CartsListEventOpenCartPage;

}
