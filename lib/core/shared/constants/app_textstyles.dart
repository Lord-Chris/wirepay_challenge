import 'package:flutter/widgets.dart';

class AppTextStyles {
  static const String avenir = 'Avenir';
  static const String nunitoSans = 'NunitoSans';
  static const String bricolage = 'Bricolage-Grotesque';

  static TextStyle dynamic(
    double size, {
    Color? color,
    FontWeight? weight,
    double? height,
    double? spacing,
    FontStyle? style,
    String? fontFamily,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? nunitoSans,
      fontSize: size,
      color: color,
      fontWeight: weight,
      height: height == null ? null : height / size,
      letterSpacing: spacing,
      fontStyle: style,
    );
  }

  static const avenirMedium24 = TextStyle(
    fontFamily: avenir,
    height: 1.36,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  /// Size: 32, Weight: Bold, Family: Bricolage-Grotesque
  static const headingSheetTitle = TextStyle(
    fontSize: 32,
    height: 1.125,
    fontWeight: FontWeight.bold,
    fontFamily: bricolage,
  );

  /// Size: 14, Weight: Regular, Family: NunitoSans
  static const body2Regular = TextStyle(
    fontSize: 14,
    height: 1.29,
    fontWeight: FontWeight.normal,
    fontFamily: nunitoSans,
  );
}
