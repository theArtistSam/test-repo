import 'package:flutter/material.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:sample/configs/configs.dart';
import 'package:sample/router/router.dart';
import 'package:sample/router/routes.dart';
import 'configs/configs.dart' as theme;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();
  final List<NavigatorObserver> observers = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      navigatorObservers: [
        ...observers,
        NavigationHistoryObserver(),
      ],
      theme: theme.themeDark,
      initialRoute: AppRoutes.favorites,
      builder: (context, child) {
        App.init(context);
        return child!;
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      routes: appRoutes,
    );
  }
}
