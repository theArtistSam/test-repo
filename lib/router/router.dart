import 'package:flutter/material.dart';
import 'package:sample/router/routes.dart';
import 'package:sample/screens/favorites/favorites.dart';

final Map<String, Widget Function(dynamic)> appRoutes = {
  AppRoutes.favorites: (_) => const FavoritesScreen(),
};

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.favorites:
      return FadeRoute(
        settings: settings,
        child: const FavoritesScreen(),
      );

    default:
      return null;
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;

  @override
  final RouteSettings settings;

  FadeRoute({required this.child, required this.settings})
      : super(
          settings: settings,
          pageBuilder: (context, ani1, ani2) => child,
          transitionsBuilder: (context, ani1, ani2, child) {
            return FadeTransition(
              opacity: ani1,
              child: child,
            );
          },
        );
}
