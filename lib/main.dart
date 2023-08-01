import 'package:choppi_test/src/helpers/flutter_logs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/data/blocs/blocs.dart';

void main() async {
  await initLogs();
  await dotenv.load();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoggerBloc(),
        ),
      ],
      child: EasyLocalization(
        supportedLocales: const [
          Locale('es', ''),
          Locale('en', ''),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('es', ''),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LoggerBloc>(context);
    return const MaterialApp();
  }
}
