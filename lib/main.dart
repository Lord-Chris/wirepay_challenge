import 'package:flutter/material.dart';

import 'core/router/_router.dart';
import 'core/shared/constants/_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: AppTheme.theme,
      navigatorKey: AppNavigator.key,
      onGenerateRoute: AppRouter.generateRoutes,
    );
  }
}
