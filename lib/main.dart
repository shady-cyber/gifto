import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gifto/modules/home.dart';
import 'package:gifto/modules/intro.dart';
import 'package:gifto/modules/login.dart';
import 'package:gifto/modules/register.dart';
import 'package:gifto/shared/providers/splash_provider.dart';
import 'package:provider/provider.dart';
import 'modules/splash.dart';
import 'di_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();

  runApp(
    MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (context) => di.sl<SplashProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<AccountProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<AttendanceProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<ProfileProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<VacationProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<LoanProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<GeneralRequestProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<PenaltyProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<CashProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<LoanDelayProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<ClearanceProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<ConnectStringProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<NotificationProvider>()),
        // ChangeNotifierProvider(create: (context) => di.sl<EmployeeProvider>()),
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'AR')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        startLocale: const Locale('en'),
        useOnlyLangCode: true,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Splash(),
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/intro': (context) => const Intro(),
        '/home': (context) => const Home(),
      }
    );
  }
}