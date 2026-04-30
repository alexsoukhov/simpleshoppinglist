import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:simpleshoppinglist/application/ui/screens/carts_list/carts_list_page.dart';
import 'package:simpleshoppinglist/application/ui/screens/settings/widgets/suggestion_input_widget.dart';
import 'package:simpleshoppinglist/application/ui/screens/settings/widgets/suggestion_item_widget.dart';

import '../../../../di/di.dart';
import '../../../../domain/preferences_repository.dart';
import '../../../../generated/l10n.dart';
import '../../common/extensions/dialog.dart';
import '../../common/widgets/border_icon_button.dart';
import '../../theme/dimensions.dart';
import '../../theme/styles.dart';
import '../application_error/bloc/application_error_bloc.dart';
import 'bloc/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide = BorderSide(
      color: Styles.borderColor(context),
      width: 1,
    );

    return BlocProvider(
      create: (context) => SettingsBloc(
        getIt<PreferencesRepository>(),
        ApplicationErrorBloc.of(context),
      ),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              bottom: true,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingMainHorizontal,
                      ),
                      child: CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            automaticallyImplyLeading: false,
                            forceMaterialTransparency: true,
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BorderIconButton(
                                  onTap: () => Navigator.of(context).pop(),
                                  icon: Icons.arrow_back,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(S.of(context).settings),
                                  ),
                                ),
                                const SizedBox(width: Dimensions.buttonSize),
                              ],
                            ),
                            titleSpacing: 0,
                            elevation: 1.0,
                          ),

                          // Theme
                          SliverToBoxAdapter(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  top: borderSide,
                                  left: borderSide,
                                  right: borderSide,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Dimensions.cornerRadius,
                                  topRight: Dimensions.cornerRadius,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: Dimensions.gapVertical,
                                ),
                                child: Center(
                                  child: Text(
                                    S.of(context).theme,
                                    style: Styles.textLarge(context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  left: borderSide,
                                  right: borderSide,
                                ),
                              ),
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.gapHorizontal,
                                ),
                                title: Text(
                                  S.of(context).use_dark_theme,
                                  style: Styles.textMedium(context),
                                ),
                                value: state.useDarkTheme,
                                onChanged: (bool? value) =>
                                    _onDarkTheme(context, value),
                              ),
                            ),
                          ),

                          SliverToBoxAdapter(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: borderSide,
                                  left: borderSide,
                                  right: borderSide,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Dimensions.cornerRadius,
                                  bottomRight: Dimensions.cornerRadius,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                bottom: Dimensions.gapVertical,
                              ),
                              child: LayoutBuilder(
                                builder: (context, builder) {
                                  double width = builder.constrainWidth();
                                  return Row(
                                    children: [
                                      SizedBox(
                                        width: width / 2,
                                        child: ColorPicker(
                                          enableAlpha: false,
                                          pickerColor: state.seedColor,
                                          onColorChanged: (value) =>
                                              _onChangeColor(context, value),
                                          paletteType: PaletteType.hueWheel,
                                          showLabel: false,
                                          colorPickerWidth: 200,
                                        ),
                                      ),
                                      SizedBox(
                                        width: width / 2,
                                        height: width / 2 * 1.5,
                                        child: IgnorePointer(
                                          child: Theme(
                                            data: ThemeData(
                                              colorScheme: .fromSeed(
                                                seedColor: state.seedColor,
                                                brightness: Brightness.dark,
                                              ),
                                            ),
                                            child: CartsListPage(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),

                          // Suggestions
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: Dimensions.gapVertical,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: borderSide,
                                    left: borderSide,
                                    right: borderSide,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Dimensions.cornerRadius,
                                    topRight: Dimensions.cornerRadius,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: Dimensions.gapVertical,
                                  ),
                                  child: Center(
                                    child: Text(
                                      S.of(context).cart_name_suggestions,
                                      style: Styles.textLarge(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  left: borderSide,
                                  right: borderSide,
                                ),
                              ),
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.gapHorizontal,
                                ),
                                title: Text(
                                  S.of(context).suggest_date,
                                  style: Styles.textMedium(context),
                                ),
                                value: state.suggestionDate,
                                onChanged: (bool? value) =>
                                    _onSuggestionDate(context, value),
                              ),
                            ),
                          ),
                          DecoratedSliver(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: borderSide,
                                left: borderSide,
                                right: borderSide,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Dimensions.cornerRadius,
                                bottomRight: Dimensions.cornerRadius,
                              ),
                            ),
                            sliver: SliverReorderableList(
                              itemBuilder: (BuildContext context, int index) {
                                if (index < state.suggestions.length) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: Dimensions.gapHorizontal,
                                    ),
                                    key: ObjectKey(state.suggestions[index]),
                                    child: SuggestionItemWidget(
                                      key: ObjectKey(state.suggestions[index]),
                                      item: state.suggestions[index],
                                      index: index,
                                      onDelete: () => _onDelete(context, index),
                                      onEdit: () => _onEdit(
                                        context,
                                        SettingsBloc.of(context),
                                        index,
                                        state.suggestions[index],
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      left: Dimensions.gapHorizontal,
                                      right: Dimensions.gapHorizontal,
                                      bottom: Dimensions.gapVertical,
                                    ),
                                    key: ValueKey("edit_field"),
                                    child: SuggestionInputWidget(
                                      key: ValueKey("edit_field"),
                                      onAdd: (v) => _onAdd(context, v),
                                    ),
                                  );
                                }
                              },
                              itemCount: state.suggestions.length + 1,
                              onReorder: (int oldIndex, int newIndex) =>
                                  _onReorder(context, oldIndex, newIndex),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (state.isModified)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => _onSave(context),
                          child: Text(S.of(context).save_changes),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onDelete(BuildContext context, int idx) {
    SettingsBloc.of(context).add(SettingsEvent.delete(idx));
  }

  void _onAdd(BuildContext context, String name) {
    SettingsBloc.of(context).add(SettingsEvent.add(name));
  }

  void _onReorder(BuildContext context, int oldIndex, int newIndex) {
    SettingsBloc.of(context).add(SettingsEvent.reorder(oldIndex, newIndex));
  }

  void _onEdit(
    BuildContext context,
    SettingsBloc bloc,
    int idx,
    String item,
  ) async {
    String? result = await context.editValueDialog(item);

    if (result is String) {
      bloc.add(SettingsEvent.edit(idx, result));
    }
  }

  void _onSave(BuildContext context) {
    SettingsBloc.of(context).add(SettingsEvent.save());
  }

  void _onSuggestionDate(BuildContext context, bool? value) {
    if (value != null) {
      SettingsBloc.of(context).add(SettingsEvent.switchDate(value));
    }
  }

  void _onChangeColor(BuildContext context, Color value) {
    SettingsBloc.of(context).add(SettingsEvent.changeColor(value));
  }

  void _onDarkTheme(BuildContext context, bool? value) {
    if (value != null) {
      SettingsBloc.of(context).add(SettingsEvent.switchTheme(value));
    }
  }
}
