import 'package:provider/provider.dart';

import 'async_value.dart';

class AsyncValueFutureProvider<T> extends FutureProvider<AsyncValue<T>> {
  AsyncValueFutureProvider({
    super.key,
    required Create<Future<T>?> create,
    super.lazy,
    super.builder,
    super.child,
  }) : super(
          create: (context) => create.call(context)?.then(AsyncValue.ready),
          initialData: const AsyncValue.loading(),
          catchError: (context, error) => AsyncValue.error(error),
        );
}
