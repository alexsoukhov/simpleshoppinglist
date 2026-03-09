import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/bloc/settings/settings_suggestion_input_widget.dart';
import 'package:simpleshoppinglist/application/ui/settings/settings_suggestion_item_widget.dart';
import 'package:simpleshoppinglist/repositories/preferences_repository.dart';

import '../../../generated/l10n.dart';
import '../../bloc/application_error/application_error_bloc.dart';
import '../../bloc/settings/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(
        context.read<PreferencesRepository>(),
        ApplicationErrorBloc.of(context),
      ),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Scaffold(
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  forceMaterialTransparency: true,
                  title: Text(S.of(context).settings),
                  titleSpacing: 0,
                  elevation: 1.0,
                ),
                SliverReorderableList(
                  itemBuilder: (BuildContext context, int index) {
                    if (index < state.suggestions.length) {
                      return SettingsSuggestionItemWidget(
                        key: ObjectKey(state.suggestions[index]),
                        item: state.suggestions[index],
                        index: index,
                        onDelete: () => _onDelete(context, index),
                      );
                    } else {
                      return SettingsSuggestionInputWidget(
                        key: ValueKey("edit_field"),
                        onAdd: (v) => _onAdd(context, v),
                      );
                    }
                  },
                  itemCount: state.suggestions.length + 1,
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

  void _onDelete(BuildContext context, int idx) {
    SettingsBloc.of(context).add(SettingsEvent.delete(idx));
  }

  void _onAdd(BuildContext context, String name) {
    SettingsBloc.of(context).add(SettingsEvent.add(name));
  }

  void _onReorder(BuildContext context, int oldIndex, int newIndex) {
    SettingsBloc.of(context).add(SettingsEvent.reorder(oldIndex, newIndex));
  }
}
