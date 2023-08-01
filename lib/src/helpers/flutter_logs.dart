import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_logs/flutter_logs.dart';

Future<void> initLogs() async {
  WidgetsFlutterBinding.ensureInitialized();

  unawaited(
    FlutterLogs.initLogs(
      logLevelsEnabled: [
        LogLevel.INFO,
        LogLevel.WARNING,
        LogLevel.ERROR,
        LogLevel.SEVERE
      ],
      timeStampFormat: TimeStampFormat.TIME_FORMAT_READABLE,
      directoryStructure: DirectoryStructure.FOR_DATE,
      logTypesEnabled: ['device', 'network', 'errors', 'location'],
      logFileExtension: LogFileExtension.LOG,
      logsWriteDirectoryName: 'MyLogs',
      logsExportDirectoryName: 'MyLogs/Exported',
    ),
  );
}

void exportLogs() {
  FlutterLogs.exportLogs();
}
