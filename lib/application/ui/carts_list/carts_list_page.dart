import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/ui/carts_list/cart_name_input_widget.dart';
import 'package:simpleshoppinglist/repositories/carts_repository.dart';
import 'package:simpleshoppinglist/repositories/preferences_repository.dart';

import '../../../data/models/cart.dart';
import '../../bloc/application_error/application_error_bloc.dart';
import '../../bloc/carts_list/carts_list_bloc.dart';
import '../../bloc/main/main_bloc.dart';
import 'carts_list_item_widget.dart';

class CartsListPage extends StatefulWidget {
  const CartsListPage({super.key});

  @override
  State<CartsListPage> createState() => _CartsListPageState();
}

class _CartsListPageState extends State<CartsListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartsListBloc(
        context.read<CartsRepository>(),
        context.read<PreferencesRepository>(),
        ApplicationErrorBloc.of(context),
      ),
      child: BlocPresentationListener<CartsListBloc, CartsListEvent>(
        listener: (context, event) {
          switch (event) {}
        },
        child: BlocBuilder<CartsListBloc, CartsListState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  forceMaterialTransparency: true,
                  title: CartNameInputWidget(
                    onPressed: (text) => _onAdd(context, text),
                    onCallback: (String search) {
                      return CartsListBloc.of(context).getSuggestions(search);
                    },
                  ),
                  floating: true,
                  titleSpacing: 0,
                  elevation: 1.0,
                ),
                SliverReorderableList(
                  itemBuilder: (BuildContext context, int index) {
                    final cart = state.data[index];

                    return CartsListItemWidget(
                      key: ObjectKey(cart),
                      cart: cart,
                      selectedCart: state.selectedCart,
                      index: index,
                      onPressed: () => _onSelect(context, cart),
                      onDelete: () => _onDelete(context, cart),
                    );
                  },
                  itemCount: state.data.length,
                  onReorder: (int oldIndex, int newIndex) =>
                      _onReorder(context, oldIndex, newIndex),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _onAdd(BuildContext context, String name) {
    CartsListBloc.of(context).add(CartsListEvent.createList(name));
  }

  void _onReorder(BuildContext context, int oldIndex, int newIndex) {
    CartsListBloc.of(context).add(CartsListEvent.reorder(oldIndex, newIndex));
  }

  void _onSelect(BuildContext context, Cart cart) {
    MainBloc.of(context).add(MainEvent.select(cart));
  }

  void _onDelete(BuildContext context, Cart cart) {
    CartsListBloc.of(context).add(CartsListEvent.delete(cart));
  }
}
