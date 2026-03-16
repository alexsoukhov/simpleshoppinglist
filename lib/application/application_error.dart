import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpleshoppinglist/application/ui/common/extensions/toast.dart';

import 'bloc/application_error/application_error_bloc.dart';

class ApplicationError extends StatelessWidget {
  const ApplicationError({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Overlay(
    initialEntries: [
      OverlayEntry(
        builder: (context) => BlocProvider(
          create: (context) => ApplicationErrorBloc(),
          child: BlocListener<ApplicationErrorBloc, ApplicationErrorState>(
            listenWhen: (previous, current) {
              return current != previous;
            },
            listener: _handleEvent,
            child: child,
          ),
        ),
      ),
    ],
  );

  void _handleEvent(BuildContext context, ApplicationErrorState state) {
    if (state is ApplicationErrorStateShow) {
      context.displayError(code: state.code, value: state.value);
    }
  }
}
