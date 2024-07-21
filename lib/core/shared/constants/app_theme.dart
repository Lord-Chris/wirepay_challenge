import 'package:flutter/material.dart';

import '_constants.dart';

class AppTheme {
  static final theme = ThemeData(
    useMaterial3: true,
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkPrimary),
    fontFamily: AppTextStyles.nunitoSans,
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightBackground,
      elevation: 0,
      surfaceTintColor: AppColors.lightBackground,
    ),
    dividerColor: AppColors.darkBorders,
    dividerTheme: const DividerThemeData(
      thickness: 1,
      color: AppColors.darkBorders,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.darkPrimary,
      unselectedItemColor: AppColors.darkLow,
      selectedLabelStyle: AppTextStyles.body3Header,
      unselectedLabelStyle: AppTextStyles.body3Regular,
    ),
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8),
    //     borderSide: const BorderSide(color: AppColors.gray300, width: 1),
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8),
    //     borderSide: const BorderSide(color: AppColors.gray300, width: 1),
    //   ),
    //   disabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8),
    //     borderSide: const BorderSide(color: AppColors.gray300, width: 1),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8),
    //     borderSide: const BorderSide(color: AppColors.gray300, width: 1),
    //   ),
    //   filled: true,
    //   fillColor: AppColors.white,
    //   // hintStyle: AppTextStyles.regular16.copyWith(color: AppColors.gray400),
    // ),
  );
}
