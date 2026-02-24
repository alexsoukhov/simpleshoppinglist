import 'package:provider/provider.dart';

import 'async_value.dart';

class AsyncValueStreamProvider<T> extends StreamProvider<AsyncValue<T>> {
  AsyncValueStreamProvider({
    required Create<Stream<T>?> create,
    super.key,
    super.lazy,
    super.builder,
    super.child,
  }) : super(
          create: (context) => create.call(context)?.map(AsyncValue.ready),
          initialData: const AsyncValue.loading(),
          catchError: (context, error) => AsyncValue.error(error),
        );
}
