import 'dart:async';

import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:simpleshoppinglist/data/models/cart.dart';
import 'package:simpleshoppinglist/repositories/carts_repository.dart';
import 'package:uuid/uuid.dart';

import '../application_error/application_error_bloc.dart';

part 'carts_list_bloc.freezed.dart';

part 'carts_list_event.dart';

part 'carts_list_state.dart';

class CartsListBloc extends Bloc<CartsListEvent, CartsListState> with BlocPresentationMixin<CartsListState, CartsListEvent> {
  CartsListBloc(this._cartsRepository, this._errorBloc)
    : super(CartsListState(loading: true)) {
    on<CartsListEventInit>((event, emit) async {
      await _initData(emit);
    });
    on<CartsListEventSelect>(_select);
    on<CartsListEventCreateList>(_createList);
    on<CartsListEventReorder>(_reorder);

    add(const CartsListEventInit());
  }

  final CartsRepository _cartsRepository;
  final ApplicationErrorBloc _errorBloc;

  static CartsListBloc of(BuildContext context) =>
      BlocProvider.of<CartsListBloc>(context);

  Future<void> _initData(Emitter<CartsListState> emit) async {
    await Rx.combineLatest2(
        _cartsRepository.cartsStream,
        _cartsRepository.selectedCartStream,
            (List<Cart> stream1, Cart? stream2) {
          return [stream1, stream2];
        }).forEach((element) async {

      emit(state.copyWith(data: element[0] as List<Cart>, selectedCart: element[1] as Cart?));
    });
  }

  Future<void> _select(
    CartsListEventSelect event,
    Emitter<CartsListState> emit,
  ) async {
    _cartsRepository.selectedCart = event.cart;

    emitPresentation(CartsListEvent.openCartPage());
  }

  Future<void> _createList(
    CartsListEventCreateList event,
    Emitter<CartsListState> emit,
  ) async {
    _cartsRepository.add(
      Cart(id: Uuid().v4(), name: event.name, date: DateTime.now(), items: []),
    );
  }

  Future<void> _reorder(
    CartsListEventReorder event,
    Emitter<CartsListState> emit,
  ) async {
    /*
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    setState(() {
      // this is required, before you modified your box;
      
      _cartsRepository.getCart(id)
      
      final oldItem = itemsBox.getAt(oldIndex);
      final newItem = itemsBox.getAt(newIndex);

      // here you just swap this box item, oldIndex <> newIndex
      itemsBox.putAt(oldIndex, newItem);
      itemsBox.putAt(newIndex, oldItem);
    });


    _cartsRepository.selectedCart?.items.toList().
    // this is required, before you modified your box;
    final oldItem = itemsBox.getAt(oldIndex);
    final newItem = itemsBox.getAt(newIndex);

    // here you just swap this box item, oldIndex <> newIndex
    itemsBox.putAt(oldIndex, newItem);
    itemsBox.putAt(newIndex, oldItem);

    emit(state);*/
  }
}
