import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/bloc/main/main_bloc.dart';
import 'package:simpleshoppinglist/application/ui/cart/product_input_widget.dart';
import 'package:simpleshoppinglist/repositories/carts_repository.dart';

import '../../../data/models/cart_item.dart';
import '../../bloc/application_error/application_error_bloc.dart';
import '../../bloc/cart/cart_bloc.dart';
import 'cart_item_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key, this.allowBack = true});

  final bool allowBack;

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
                automaticallyImplyLeading: false, // this will hide Drawer hamburger icon
                actions: <Widget>[Container()],
                forceMaterialTransparency: true,
                title: ProductInputWidget(
                  onPressed: (text) => _onAdd(context, text),
                  onBack: () => _onBack(context),
                  enabled: state.data != null,
                  allowBack: allowBack,
                  onCallback: (String search) {
                    return CartBloc.of(context).getSuggestions(search);
                  },
                ),
                floating: true,
                titleSpacing: 0,
                elevation: 1.0,
              ),
              PinnedHeaderSliver(
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(state.data?.name ?? ""),
                  ),
                ),
              ),

              SliverReorderableList(
                itemBuilder: (BuildContext context, int index) {
                  return CartItemWidget(
                    key: ObjectKey(state.data!.items[index]),
                    cart: state.data!.items[index],
                    index: index,
                    onLongPress: () =>
                        _onLongPress(context, state.data!.items[index]),
                    onDelete: () =>
                        _onDelete(context, state.data!.items[index]),
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

  void _onBack(BuildContext context) {
    MainBloc.of(context).add(MainEvent.openCartsListPage());
  }
}
