import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/config/routes_import.dart';
import 'src/data/blocs/blocs.dart';
import 'src/helpers/helpers.dart';
import 'src/ui/themes/themes.dart';

final _appRouter = Routes();

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LoggerBloc>(context);
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Rick and Morty',
      debugShowCheckedModeBanner: dotenv.get('DEBUG') == 'true',
      theme: ThemeData(
        primaryColor: darkGreen100,
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: darkGreen100),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: darkGreen100),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: darkGreen100),
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: darkGreen100,
        ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              color: darkGreen100,
            ),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
