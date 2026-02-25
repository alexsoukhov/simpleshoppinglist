import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:simpleshoppinglist/application/ui/splash/error_screen.dart';
import 'package:simpleshoppinglist/application/ui/splash/splash_screen.dart';
import 'package:simpleshoppinglist/repositories/preferences_repository.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

import '../repositories/app_lifecycle_state_repository.dart';
import '../repositories/carts_repository.dart';
import '../sources/hive/hive_source.dart';
import '../sources/local/app_lifecycle_state_source.dart';
import 'common/async_value.dart';
import 'common/async_value_future_provider.dart';

class ApplicationProviders extends StatelessWidget {
  const ApplicationProviders({super.key, required this.builder});

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) => hiveSourceProvider(
    child: preferencesSourceProvider(
      child: MultiProvider(
        providers: [
          shoppingListRepositoryProvider(),
          preferencesRepositoryProvider(),
          appLifecycleStateSourceProvider(),
          appLifecycleStateRepositoryProvider(),
        ],
        builder: (context, child) => builder(context),
      ),
    ),
  );

  Widget hiveSourceProvider({required Widget child}) =>
      asyncValueProvider<HiveSource>(
        create: (context) => HiveSource.create(),
        dispose: (context, value) => value.dispose(),
        child: child,
      );

  Widget preferencesSourceProvider({required Widget child}) =>
      asyncValueProvider<PreferencesSource>(
        create: (context) => PreferencesSource.create(),
        child: child,
      );

  Provider<CartsRepository> shoppingListRepositoryProvider() =>
      Provider<CartsRepository>(
        create: (context) => CartsRepository(context.read<HiveSource>()),
      );

  Provider<PreferencesRepository> preferencesRepositoryProvider() =>
      Provider<PreferencesRepository>(
        create: (context) => PreferencesRepository(context.read<PreferencesSource>()),
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

  Widget asyncValueProvider<T>({
    required Future<T> Function(BuildContext context) create,
    void Function(BuildContext context, T value)? dispose,
    required Widget child,
  }) => AsyncValueFutureProvider<T>(
    create: (context) => create(context),
    builder: (context, _) => context.watch<AsyncValue<T>>().when(
      ready: (value) => Provider<T>(
        create: (context) => value,
        dispose: dispose,
        child: child,
      ),
      error: (error) => ErrorScreen(text: '$error'),
      loading: () => const SplashScreen(),
    ),
  );
}
