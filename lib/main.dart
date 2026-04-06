import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simpleshoppinglist/di/di.dart';
import 'package:simpleshoppinglist/domain/preferences_repository.dart';
import 'package:simpleshoppinglist/sources/preferences/preferences_source.dart';

import 'application/ui/screens/application_error/application_error.dart';
import 'application/application_lifecycle_listener.dart';
import 'application/application_providers.dart';
import 'application/ui/screens/main/main_page.dart';
import 'application/ui/screens/settings/settings_page.dart';
import 'config.dart';
import 'data/repositories/app_lifecycle_state_repository.dart';
import 'generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Config.dev();

  await configureDependencies();

  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/home",
      redirect: (_, __) => "/"
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationProviders(
      builder: (context) => StreamBuilder(
        stream: getIt<PreferencesRepository>().appSeedColorStream,
        builder: (context, stream) {
          ThemeData theme = ThemeData(
            colorScheme: .fromSeed(
              seedColor: stream.hasData ? stream.requireData : Colors.blue,
              brightness: Brightness.dark,
            ),
          );

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: _router,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, widget) => ApplicationLifecycleListener(
              repository: context.read<AppLifecycleStateRepository>(),
              builder: (context) {
                PreferencesSource.initDefaultValues(context);
                return ApplicationError(child: widget ?? const SizedBox());
              },
            ),
            theme:
                ThemeData(
                  colorScheme: .fromSeed(
                    seedColor: stream.hasData
                        ? stream.requireData
                        : Colors.blue,
                    brightness: Brightness.dark,
                  ),
                ).copyWith(
                  textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 22.0)),
                  primaryTextTheme: TextTheme(
                    bodySmall: TextStyle(fontSize: 15.0),
                    bodyMedium: TextStyle(fontSize: 22.0),
                    displayMedium: TextStyle(fontSize: 21.0),
                    headlineMedium: TextStyle(fontSize: 21.0),
                    titleMedium: TextStyle(fontSize: 21.0),
                    labelMedium: TextStyle(fontSize: 21.0),
                  ),
                ),
            locale: const Locale.fromSubtags(languageCode: 'ru'),
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
