import 'package:flutter/material.dart';
import 'package:simpleshoppinglist/application/ui/carts_list/widgets/preview_tag_widget.dart';

import '../../../../data/models/cart.dart';
import '../../../../data/models/cart_item.dart';
import '../../../../generated/l10n.dart';
import '../../theme/styles.dart';

class CartsListItemWidget extends StatefulWidget {
  const CartsListItemWidget({
    super.key,
    this.onPressed,
    this.onDelete,
    this.onEdit,
    required this.cart,
    required this.selectedCart,
    required this.index,
  });

  final Cart cart;
  final Cart? selectedCart;
  final int index;
  final VoidCallback? onPressed;
  final VoidCallback? onDelete;
  final VoidCallback? onEdit;

  @override
  State<CartsListItemWidget> createState() => _CartsListItemWidgetState();
}

class _CartsListItemWidgetState extends State<CartsListItemWidget> {
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
      child: MenuAnchor(
        style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(
            Styles.cardBackgroundColor(context),
          ),
          side: WidgetStatePropertyAll<BorderSide>(
            BorderSide(color: Styles.borderColor(context), width: 1),
          ),
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          alignment: AlignmentGeometry.bottomLeft,
          padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.all(0)),
        ),
        alignmentOffset: Offset(10, 0),
        crossAxisUnconstrained: false,
        controller: _menuController,
        builder: (BuildContext context, MenuController controller, Widget? child) {
          final remaining = widget.cart.remaining;
          final shown = remaining.take(3).toList();
          final extra = remaining.length - shown.length;

          return Container(
            margin: const EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              color: Styles.cardBackgroundColor(context),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Styles.borderColor(context), width: 1),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: widget.onPressed,
                onLongPress: () => _menuController.open(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Название + теги превью
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.cart.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Wrap(
                              spacing: 4,
                              runSpacing: 4,
                              children: _buildTags(shown, extra, widget.cart),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Счётчик + стрелка
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${widget.cart.doneCount}/${widget.cart.items.length}',
                            style: TextStyle(
                              color: Styles.textColorSmall(context),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '›',
                            style: TextStyle(
                              color: Styles.iconColor(context),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        menuChildren: [
          ListTile(
            title: Row(
              children: [
                Icon(
                  color: Styles.iconColor(context),
                  Icons.delete,
                ),
                const SizedBox(width: 8),
                Text(S.of(context).remove_item),
              ],
            ),
            onTap: () {
              _menuController.close();
              widget.onDelete?.call();
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(color: Styles.iconColor(context), Icons.edit),
                const SizedBox(width: 8),
                Text(S.of(context).edit_item),
              ],
            ),
            onTap: () {
              _menuController.close();
              widget.onEdit?.call();
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTags(List<CartItem> shown, int extra, Cart list) {
    if (list.items.isEmpty) {
      return [PreviewTagWidget(label: S.of(context).empty)];
    }
    if (shown.isEmpty) {
      return [PreviewTagWidget(label: S.of(context).all_bought)];
    }
    return [
      for (final item in shown) PreviewTagWidget(label: item.value),
      if (extra > 0) PreviewTagWidget(label: '+$extra'),
    ];
  }
}
