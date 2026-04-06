import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../common/widgets/border_icon_button.dart';
import '../../../theme/dimensions.dart';
import '../../../theme/styles.dart';

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  const HeaderDelegate(this.topPadding, this.value);

  final double topPadding;
  final String value;

  @override
  double get minExtent => topPadding;

  @override
  double get maxExtent => 50 + topPadding;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      //padding: EdgeInsets.only(top: maxExtent - shrinkOffset),
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: Styles.cardBackgroundColor(context),
          borderRadius: Dimensions.borderRadius,
          border: Border.all(color: Styles.borderColorSmall(context), width: 1),
        ),
        padding: const EdgeInsets.all(14),
        child: Center(child: Text(value)),
      ),
    );
  }

  @override
  bool shouldRebuild(HeaderDelegate oldDelegate) {
    return topPadding != oldDelegate.topPadding;
  }
}
