import 'package:logger/logger.dart';

class Log {
  Log._internal();

  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      printTime: true,
    ),
  );

  static final Log _instance = Log._internal();
  static Logger get p => _instance._logger;
}
