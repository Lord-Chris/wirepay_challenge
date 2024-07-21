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

  /// Size: 12, Weight: Regular, Family: Avenir
  static const avenirRegular12 = TextStyle(
    fontFamily: avenir,
    height: 1.43,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  /// Size: 16, Weight: Medium, Family: Avenir
  static const avenirMedium16 = TextStyle(
    fontFamily: avenir,
    height: 1.43,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  /// Size: 20, Weight: ExtraBold, Family: Avenir
  static const avenirExtraBold20 = TextStyle(
    fontFamily: avenir,
    height: 1.35,
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );

  /// Size: 24, Weight: Medium, Family: Avenir
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

  /// Size: 18, Weight: SemiBold, Family: Bricolage-Grotesque
  static const headingSectionHeader = TextStyle(
    fontSize: 18,
    height: 1.167,
    fontWeight: FontWeight.w600,
    fontFamily: bricolage,
  );

  /// Size: 10, Weight: ExtraBold, Family: NunitoSans
  static const body3Header = TextStyle(
    fontSize: 10,
    height: 1.36,
    fontWeight: FontWeight.w800,
    fontFamily: nunitoSans,
    letterSpacing: -0.02,
  );

  /// Size: 10, Weight: Medium, Family: NunitoSans
  static const body3High = TextStyle(
    fontSize: 10,
    height: 1.36,
    fontWeight: FontWeight.w500,
    fontFamily: nunitoSans,
    letterSpacing: -0.02,
  );

  /// Size: 10, Weight: Regular, Family: NunitoSans
  static const body3Regular = TextStyle(
    fontSize: 10,
    height: 1.36,
    fontWeight: FontWeight.normal,
    fontFamily: nunitoSans,
    letterSpacing: -0.02,
  );

  /// Size: 14, Weight: Regular, Family: NunitoSans
  static const body2Regular = TextStyle(
    fontSize: 14,
    height: 1.29,
    fontWeight: FontWeight.normal,
    fontFamily: nunitoSans,
  );

  /// Size: 14, Weight: Medium, Family: NunitoSans
  static const body2High = TextStyle(
    fontSize: 14,
    height: 1.29,
    fontWeight: FontWeight.w500,
    fontFamily: nunitoSans,
  );

  /// Size: 14, Weight: Medium, Family: NunitoSans
  static const body2Link = TextStyle(
    fontSize: 14,
    height: 1.29,
    fontWeight: FontWeight.w500,
    fontFamily: nunitoSans,
  );

  /// Size: 16, Weight: Medium, Family: NunitoSans
  static const body1High = TextStyle(
    fontSize: 16,
    height: 1.43,
    fontWeight: FontWeight.w500,
    fontFamily: nunitoSans,
  );

  /// Size: 16, Weight: Medium, Family: NunitoSans
  static const body1Header = TextStyle(
    fontSize: 16,
    height: 1.43,
    fontWeight: FontWeight.bold,
    fontFamily: nunitoSans,
  );

  /// Size: 14, Weight: SemiBold, Family: NunitoSans
  static const buttonButton = TextStyle(
    fontSize: 14,
    height: 1.29,
    fontWeight: FontWeight.w600,
    fontFamily: nunitoSans,
  );
}
