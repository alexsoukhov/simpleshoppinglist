import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/bloc/main/main_bloc.dart';
import 'package:simpleshoppinglist/application/ui/cart/widgets/product_input_widget.dart';

import '../../../data/models/cart_item.dart';
import '../../../di/di.dart';
import '../../../domain/carts_repository.dart';
import '../../bloc/application_error/application_error_bloc.dart';
import '../../bloc/cart/cart_bloc.dart';
import '../common/extensions/dialog.dart';
import '../theme/styles.dart';
import 'widgets/cart_item_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key, this.allowBack = true});

  final bool allowBack;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(
        getIt<CartsRepository>(),
        ApplicationErrorBloc.of(context),
      ),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  forceMaterialTransparency: true,
                  title: ProductInputWidget(
                    onAdd: (text) => _onAdd(context, text),
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: Styles.cardBackgroundColor(context),
                      borderRadius: Styles.borderRadius,
                      border: Border.all(
                        color: Styles.borderColorSmall(context),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.all(14),
                    child: Center(child: Text(state.data?.name ?? "")),
                  ),
                ),
                SliverPadding(padding: EdgeInsets.only(top: 8)),
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
                      onEdit: () => _onEdit(
                        context,
                        CartBloc.of(context),
                        state.data!.items[index],
                      ),
                    );
                  },
                  itemCount: state.data?.items.length ?? 0,
                  onReorder: (int oldIndex, int newIndex) =>
                      _onReorder(context, oldIndex, newIndex),
                ),
              ],
            ),
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

  void _onEdit(BuildContext context, CartBloc bloc, CartItem item) async {
    String? result = await context.editValueDialog(item.value);

    if (result is String) {
      bloc.add(CartEvent.edit(item, result));
    }
  }
}
