import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/ui/cart/product_input_widget.dart';
import 'package:simpleshoppinglist/application/ui/list_carts/new_cart_widget.dart';
import 'package:simpleshoppinglist/repositories/carts_repository.dart';

import '../../../data/models/cart.dart';
import '../../../data/models/cart_item.dart';
import '../../bloc/application_error/application_error_bloc.dart';
import '../../bloc/cart/cart_bloc.dart';
import '../../bloc/list_carts/carts_list_bloc.dart';
import '../list_carts/carts_list_item_widget.dart';
import 'cart_item_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(
        context.read<CartsRepository>(),
        ApplicationErrorBloc.of(context),
      ),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                title: ProductInputWidget(
                  onPressed: (text) => _onAdd(context, text),
                  onCallback: (String search) {
                    return search.length > 1
                        ? state.suggestions
                              .where(
                                (e) => e.toLowerCase().contains(
                                  search.toLowerCase(),
                                ),
                              )
                              .toList()
                        : [];
                  },
                ),
                floating: true,
                titleSpacing: 0,
                elevation: 1.0,
              ),
              SliverReorderableList(
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                    key: ValueKey(index),
                    child: CartItemWidget(
                      cart: state.data!.items[index],
                      index: index,
                      onLongPress: () =>
                          _onLongPress(context, state.data!.items[index]),
                      onDelete: () =>
                          _onDelete(context, state.data!.items[index]),
                    ),
                  );
                },
                itemCount: state.data?.items.length ?? 0,
                onReorder: (int oldIndex, int newIndex) =>
                    _onReorder(context, oldIndex, newIndex),
              ),
            ],
          );
        },
      ),
    );
  }

  void _onLongPress(BuildContext context, CartItem item) {
    CartBloc.of(context).add(CartEvent.toggle(item));
  }

  void _onDelete(BuildContext context, CartItem item) {
    CartBloc.of(context).add(CartEvent.delete(item));
  }

  void _onAdd(BuildContext context, String name) {
    CartBloc.of(context).add(CartEvent.createItem(name));
  }

  void _onReorder(BuildContext context, int oldIndex, int newIndex) {
    CartBloc.of(context).add(CartEvent.reorder(oldIndex, newIndex));
  }
}
