import 'package:flutter/material.dart';

import '../repositories/app_lifecycle_state_repository.dart';

class ApplicationLifecycleListener extends StatefulWidget {
  const ApplicationLifecycleListener({
    super.key,
    required this.builder,
    required this.repository,
  });

  final WidgetBuilder builder;
  final AppLifecycleStateRepository repository;

  @override
  State<ApplicationLifecycleListener> createState() =>
      _ApplicationLifecycleListener();
}

class _ApplicationLifecycleListener extends State<ApplicationLifecycleListener>
    with WidgetsBindingObserver {
  bool val = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    widget.repository.updateAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) => widget.builder(context);
}
