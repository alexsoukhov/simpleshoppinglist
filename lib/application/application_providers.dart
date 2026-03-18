import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:simpleshoppinglist/di/di.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

import '../data/repositories/app_lifecycle_state_repository.dart';
import '../data/repositories/preferences_repository.dart';
import '../sources/local/app_lifecycle_state_source.dart';

class ApplicationProviders extends StatelessWidget {
  const ApplicationProviders({super.key, required this.builder});

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      preferencesRepositoryProvider(),
      appLifecycleStateSourceProvider(),
      appLifecycleStateRepositoryProvider(),
    ],
    builder: (context, child) => builder(context),
  );

  Provider<PreferencesRepository> preferencesRepositoryProvider() =>
      Provider<PreferencesRepository>(
        create: (context) => PreferencesRepository(getIt<PreferencesSource>()),
      );

  Provider<AppLifecycleStateSource> appLifecycleStateSourceProvider() =>
      Provider<AppLifecycleStateSource>(
        create: (context) => AppLifecycleStateSource(),
        dispose: (context, value) => value.dispose(),
      );

  Provider<AppLifecycleStateRepository> appLifecycleStateRepositoryProvider() =>
      Provider<AppLifecycleStateRepository>(
        create: (context) => AppLifecycleStateRepository(
          context.read<AppLifecycleStateSource>(),
        ),
      );
}
