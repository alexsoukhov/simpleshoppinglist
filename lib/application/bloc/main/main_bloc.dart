import 'dart:async';

import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simpleshoppinglist/repositories/carts_repository.dart';

import '../../../data/models/cart.dart';
import '../application_error/application_error_bloc.dart';

part 'main_bloc.freezed.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState>
    with BlocPresentationMixin<MainState, MainEvent> {
  MainBloc(this._cartsRepository, this._errorBloc)
    : super(MainState(loading: true)) {
    on<MainEventInit>((event, emit) async {
      await _initData(emit);
    });
    on<MainEventSelect>(_select);
    on<MainEventOpenCartsListPage>(_openCartsList);

    add(const MainEventInit());
  }

  final CartsRepository _cartsRepository;
  final ApplicationErrorBloc _errorBloc;

  static MainBloc of(BuildContext context) =>
      BlocProvider.of<MainBloc>(context);

  Future<void> _initData(Emitter<MainState> emit) async {
  }

  Future<void> _select(MainEventSelect event, Emitter<MainState> emit) async {
    _cartsRepository.selectedCart = event.cart;

    emitPresentation(MainEvent.openCartPage());
  }

  Future<void> _openCartsList(MainEventOpenCartsListPage event, Emitter<MainState> emit) async {
    emitPresentation(MainEvent.openCartsListPage());
  }
}
