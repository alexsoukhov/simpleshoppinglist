import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simpleshoppinglist/data/models/cart.dart';
import 'package:simpleshoppinglist/repositories/carts_repository.dart';
import 'package:uuid/uuid.dart';

import '../../../data/models/cart_item.dart';
import '../application_error/application_error_bloc.dart';

part 'cart_bloc.freezed.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this._cartsRepository, this._errorBloc)
    : super(CartState(loading: true)) {
    on<CartEventInit>((event, emit) async {
      await _initData(emit);
    });
    on<CartEventCreateItem>(_createItem);
    on<CartEventReorder>(_reorder);
    on<CartEventToggle>(_toggle);
    on<CartEventDelete>(_delete);
    on<CartEventEdit>(_edit);

    add(const CartEventInit());
  }

  final CartsRepository _cartsRepository;
  final ApplicationErrorBloc _errorBloc;

  static CartBloc of(BuildContext context) =>
      BlocProvider.of<CartBloc>(context);

  Future<void> _initData(Emitter<CartState> emit) async {
    await _cartsRepository.selectedCartStream.forEach((element) async {
      emit(
        state.copyWith(
          data: element,
          suggestions: await _cartsRepository.getSuggestions(),
          loading: false,
        ),
      );
    });
  }

  Future<void> _createItem(
    CartEventCreateItem event,
    Emitter<CartState> emit,
  ) async {
    final selectedCart = _cartsRepository.selectedCart;
    if (selectedCart != null && event.name.isNotEmpty) {
      final item = CartItem(
        id: Uuid().v4(),
        value: event.name,
        date: DateTime.now(),
      );

      try {
        _cartsRepository.saveSelectedCart(
          selectedCart.copyWith(items: [item, ...selectedCart.items]),
        );
      } catch (ex) {
        ApplicationErrorBloc.handleError(_errorBloc, ex);
      }
    }
  }

  Future<void> _reorder(CartEventReorder event, Emitter<CartState> emit) async {
    final selectedCart = _cartsRepository.selectedCart;
    if (selectedCart != null) {
      final oldIndex = event.oldIndex;
      var newIndex = event.newIndex;

      if (oldIndex < newIndex) {
        newIndex -= 1;
      }

      final list = selectedCart.items.toList();
      final item = list.removeAt(oldIndex);
      list.insert(newIndex, item);

      try {
        _cartsRepository.saveSelectedCart(selectedCart.copyWith(items: list));
      } catch (ex) {
        ApplicationErrorBloc.handleError(_errorBloc, ex);
      }
    }

    emit(state);
  }

  Future<void> _toggle(CartEventToggle event, Emitter<CartState> emit) async {
    final selectedCart = _cartsRepository.selectedCart;

    if (selectedCart != null) {
      final list = selectedCart.items.toList();
      list.remove(event.item);

      final item = event.item.copyWith(marked: !event.item.marked);
      if (item.marked) {
        list.add(item);
      } else {
        list.insert(0, item);
      }

      try {
        _cartsRepository.saveSelectedCart(selectedCart.copyWith(items: list));
      } catch (ex) {
        ApplicationErrorBloc.handleError(_errorBloc, ex);
      }
    }
  }

  Future<void> _delete(CartEventDelete event, Emitter<CartState> emit) async {
    final selectedCart = _cartsRepository.selectedCart;

    if (selectedCart != null) {
      final list = selectedCart.items.toList();
      list.remove(event.item);

      try {
        _cartsRepository.saveSelectedCart(selectedCart.copyWith(items: list));
      } catch (ex) {
        ApplicationErrorBloc.handleError(_errorBloc, ex);
      }
    }
  }

  Future<void> _edit(CartEventEdit event, Emitter<CartState> emit) async {
    final selectedCart = _cartsRepository.selectedCart;

    if (selectedCart != null && event.value.isNotEmpty) {
      final list = selectedCart.items.toList();
      int idx = list.indexOf(event.item);

      final item = event.item.copyWith(value: event.value);
      list[idx] = item;

      try {
        _cartsRepository.saveSelectedCart(selectedCart.copyWith(items: list));
      } catch (ex) {
        ApplicationErrorBloc.handleError(_errorBloc, ex);
      }
    }
  }

  List<String> getSuggestions(String search) {
    return search.length > 1
        ? state.suggestions
              .where((e) => e.toLowerCase().contains(search.toLowerCase()))
              .toList()
        : [];
  }
}
