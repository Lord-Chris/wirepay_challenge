import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/presentation/passcode_view.dart';
import '../../features/dashboard/presentation/home_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.passcode:
        return _getPageRoute(
          settings: settings,
          view: const PasscodeView(),
        );

      case Routes.homeView:
        return _getPageRoute(
          settings: settings,
          view: const HomeView(),
        );

      default:
        return _getPageRoute(
          settings: settings,
          view: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static PageRoute<dynamic> _getPageRoute({
    required RouteSettings settings,
    required Widget view,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(settings: settings, builder: (_) => view)
        : MaterialPageRoute(settings: settings, builder: (_) => view);
  }
}
