import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'presentation/router/app_router.dart';

void configureDependencies() {
  // final locator = GetIt.I;
  // final dio = locator.registerSingleton(Dio());
  // TODO
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('vi');
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      // systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  configureDependencies();
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(),
        ),
        routerConfig: AppRouter.routerConfig,
      ),
    );
  }
}
