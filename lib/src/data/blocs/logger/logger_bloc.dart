import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:choppi_test/src/helpers/logger.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_logs/flutter_logs.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

part 'logger_event.dart';
part 'logger_state.dart';

class LoggerBloc extends Bloc<LoggerEvent, LoggerState> {
  LoggerBloc() : super(LoggerInitial()) {
    on<LoggerEvent>((event, emit) {});
    _initLogger();
  }

  Future<void> _initLogger() async {
    FlutterLogs.channel.setMethodCallHandler((call) async {
      if (call.method == 'logsExported') {
        final zipName = call.arguments.toString();
        const tag = 'device';

        Directory? externalDirectory;

        externalDirectory = await getExternalStorageDirectory();

        unawaited(
          FlutterLogs.logInfo(
            tag,
            'found',
            'External Storage:$externalDirectory',
          ),
        );

        final file = File('${externalDirectory?.path}/$zipName');

        unawaited(
          FlutterLogs.logInfo(
            tag,
            'path',
            'Path: \n${file.path}',
          ),
        );

        if (file.existsSync()) {
          unawaited(
            FlutterLogs.logInfo(
              tag,
              'exists_sync',
              'Logs found and ready to export!',
            ),
          );

          Log.p.i('zipName: $zipName');
          final date = DateFormat('yyyy-MM-dd')
              .add_jm()
              .format(DateTime.now())
              .toLowerCase();
          try {
            // unawaited(FlutterLogs.clearLogs());
          } catch (e) {
            unawaited(FlutterLogs.logInfo(tag, 'export_log', e.toString()));
          }
        } else {
          unawaited(
            FlutterLogs.logError(
              tag,
              'existsSync',
              'File not found in storage.',
            ),
          );
        }
      } else if (call.method == 'logsPrinted') {
        Log.p.i('logsPrinted: _initLogger');
      }
    });
  }
}
