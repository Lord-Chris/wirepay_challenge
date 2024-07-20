import 'package:flutter/material.dart';

import '_constants.dart';

class AppTheme {
  static final theme = ThemeData(
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkPrimary),
    fontFamily: AppTextStyles.nunitoSans,
    // scaffoldBackgroundColor: AppColors.gray50,
    useMaterial3: true,
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
