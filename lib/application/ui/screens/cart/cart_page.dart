import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/ui/screens/cart/widgets/product_input_widget.dart';
import 'package:simpleshoppinglist/application/ui/screens/main/bloc/main_bloc.dart';
import '../../../../data/models/cart_item.dart';
import '../../../../di/di.dart';
import '../../../../domain/carts_repository.dart';
import '../../../../generated/l10n.dart';
import '../../common/extensions/dialog.dart';
import '../../theme/dimensions.dart';
import '../../theme/styles.dart';
import '../application_error/bloc/application_error_bloc.dart';
import 'bloc/cart_bloc.dart';
import 'widgets/cart_item_widget.dart';
import 'package:share_plus/share_plus.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key, this.allowBack = true});

  final bool allowBack;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CartBloc(getIt<CartsRepository>(), ApplicationErrorBloc.of(context)),
      child: BlocPresentationListener<CartBloc, CartEvent>(
        listener: (context, event) {
          if (event is CartEventShareData) {
            _onShareData(context, event.data);
          }
        },
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.paddingMainHorizontal,
              ),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    forceMaterialTransparency: true,
                    title: ProductInputWidget(
                      onAdd: (text) => _onAdd(context, text),
                      onBack: () => _onBack(context),
                      onShare: () => _onShare(context),
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
                        borderRadius: Dimensions.borderRadius,
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
                      if (index < (state.data?.items.length ?? 0)) {
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
                      } else {
                        return SizedBox(
                          key: ValueKey("offset_nav_bar"),
                          height: kBottomNavigationBarHeight,
                        );
                      }
                    },
                    itemCount: (state.data?.items.length ?? 0) + 1,
                    onReorder: (int oldIndex, int newIndex) =>
                        _onReorder(context, oldIndex, newIndex),
                  ),
                ],
              ),
            );
          },
        ),
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

  void _onShare(BuildContext context) {
    CartBloc.of(context).add(CartEvent.share());
  }

  void _onShareData(BuildContext context, String data) {
    SharePlus.instance.share(ShareParams(text: "${S.of(context).share_desc}\n$data"));
  }
}
