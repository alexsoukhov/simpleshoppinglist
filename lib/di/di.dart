import 'package:get_it/get_it.dart';
import 'package:simpleshoppinglist/data/repositories/carts_repository.dart';
import 'package:simpleshoppinglist/domain/carts_repository.dart';
import 'package:simpleshoppinglist/domain/preferences_repository.dart';
import 'package:simpleshoppinglist/sources/hive/hive_source.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

import '../data/repositories/preferences_repository.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerSingletonAsync<PreferencesSource>(
    () async => await PreferencesSource.create(),
    onCreated: (value) {
      getIt.registerSingleton<PreferencesRepository>(PreferencesRepositoryImpl(value));
    },
  );

  getIt.registerSingletonAsync<HiveSource>(
    () async => await HiveSource.create(),
    onCreated: (value) {
      getIt.registerSingleton<CartsRepository>(CartsRepositoryImpl(value));
    },
  );

  await getIt.allReady();
}
