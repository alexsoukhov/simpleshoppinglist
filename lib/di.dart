import 'package:get_it/get_it.dart';
import 'package:simpleshoppinglist/sources/hive/hive_source.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerSingletonAsync<PreferencesSource>(
    () async => await PreferencesSource.create(),
  );

  getIt.registerSingletonAsync<HiveSource>(
        () async => await HiveSource.create(),
  );

  await getIt.allReady();
}
