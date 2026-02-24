import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simpleshoppinglist/application/ui/main/main_page.dart';
import 'package:simpleshoppinglist/repositories/app_lifecycle_state_repository.dart';

import 'application/application_error.dart';
import 'application/application_lifecycle_listener.dart';
import 'application/application_providers.dart';
import 'config.dart';
import 'generated/l10n.dart';

void main() {
  Config.dev();

  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainPage();
      },
      routes: <RouteBase>[
        //TODO(AS):
        GoRoute(
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SizedBox();
          },
        ),
      ],
    ),
  ],
);

CupertinoThemeData cupertinoThemeLight() => const CupertinoThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.white,
  textTheme: CupertinoTextThemeData(
    primaryColor: Colors.black,
    textStyle: TextStyle(fontSize: 16, color: Colors.red),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationProviders(
      builder: (context) => Builder(
        builder: (context) => MaterialApp.router(
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
              return ApplicationError(child: widget ?? const SizedBox());
            },
          ),
          theme: ThemeData(
            colorScheme: .fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark,
            ),
          ),
          locale: const Locale.fromSubtags(languageCode: 'ru'),
          supportedLocales: S.delegate.supportedLocales,
        ),
      ),
    );
  }
}
