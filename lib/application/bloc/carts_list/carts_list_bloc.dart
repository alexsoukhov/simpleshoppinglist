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

class CartsListBloc extends Bloc<CartsListEvent, CartsListState>
    with BlocPresentationMixin<CartsListState, CartsListEvent> {
  CartsListBloc(this._cartsRepository, this._errorBloc)
    : super(CartsListState(loading: true)) {
    on<CartsListEventInit>((event, emit) async {
      await _initData(emit);
    });
    on<CartsListEventCreateList>(_createList);
    on<CartsListEventDelete>(_delete);
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
      },
    ).forEach((element) async {
      emit(
        state.copyWith(
          data: (element[0] as List<Cart>).reversed.toList(),
          selectedCart: element[1] as Cart?,
        ),
      );
    });
  }

  Future<void> _createList(
    CartsListEventCreateList event,
    Emitter<CartsListState> emit,
  ) async {
    if (event.name.isNotEmpty) {
      try {
        await _cartsRepository.add(
          Cart(
            id: Uuid().v4(),
            name: event.name,
            date: DateTime.now(),
            items: [],
          ),
        );
      } catch (ex) {
        ApplicationErrorBloc.handleError(_errorBloc, ex);
      }
    }
  }

  Future<void> _reorder(
    CartsListEventReorder event,
    Emitter<CartsListState> emit,
  ) async {}

  void _delete(CartsListEventDelete event, Emitter<CartsListState> emit) {
    try {
      _cartsRepository.remove(event.cart);

      if (_cartsRepository.selectedCart == event.cart) {
        _cartsRepository.selectedCart = null;
      }
    } catch (ex) {
      ApplicationErrorBloc.handleError(_errorBloc, ex);
    }
  }
}
