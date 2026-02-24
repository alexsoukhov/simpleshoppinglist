import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    colors: false,
    methodCount: 0,
    lineLength: 256,
    dateTimeFormat: DateTimeFormat.dateAndTime,
  ),
);
