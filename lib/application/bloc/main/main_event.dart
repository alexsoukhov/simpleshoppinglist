part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.init() = MainEventInit;

  const factory MainEvent.select(Cart cart) = MainEventSelect;

  const factory MainEvent.createList() = MainEventCreateList;

  const factory MainEvent.openCartPage() = MainEventOpenCartPage;

  const factory MainEvent.openCartsListPage() = MainEventOpenCartsListPage;
}
