// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/src/utils/collection_extensions.dart';
import 'package:rxdart/src/utils/subscription.dart';


EventTransformer<T> debounceSequential<T>(Duration duration) =>
    (events, mapper) => events.debounceTime(duration).asyncExpand(mapper);

EventTransformer<T> debounceClick<T>() =>
    debounceSequential(const Duration(milliseconds: 300));

EventTransformer<T> debounceSearch<T>() =>
    debounceSequential(const Duration(milliseconds: 1000));

class CombineAnyLatestStream<T, R> extends StreamView<R> {
  CombineAnyLatestStream(List<Stream<T>> streams, R Function(List<T?>) combiner)
      : super(_buildController(streams, combiner).stream);

  static StreamController<R> _buildController<T, R>(
    Iterable<Stream<T>> streams,
    R Function(List<T?> values) combiner,
  ) {
    int completed = 0;

    late List<StreamSubscription<T>> subscriptions;
    List<T?>? values;

    final controller = StreamController<R>(sync: true);

    controller.onListen = () {
      void onDone() {
        if (++completed == streams.length) {
          controller.close();
        }
      }

      subscriptions = streams.mapIndexed((index, stream) {
        return stream.listen((T event) {
          final R combined;

          if (values == null) {
            return;
          }

          values![index] = event;

          try {
            combined = combiner(List<T?>.unmodifiable(values!));
          } catch (e, s) {
            controller.addError(e, s);
            return;
          }

          controller.add(combined);
        }, onError: controller.addError, onDone: onDone);
      }).toList(growable: false);

      if (subscriptions.isEmpty) {
        controller.close();
      } else {
        values = List<T?>.filled(subscriptions.length, null);
      }
    };

    controller.onPause = () => subscriptions.pauseAll();
    controller.onResume = () => subscriptions.resumeAll();
    controller.onCancel = () {
      values = null;
      return subscriptions.cancelAll();
    };

    return controller;
  }
}

Future<Uint8List> readFileByte(String filePath) async {
  Uri myUri = Uri.parse(filePath);
  File file = File.fromUri(myUri);
  return await file.readAsBytes();
}