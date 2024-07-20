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

  // // Regular
  // /// Default color - Lightcolor2
  // static final regular11 = TextStyle(
  //   fontSize: 11,
  //   fontWeight: FontWeight.normal,
  //   height: 1.3,
  //   color: AppColors.lightColor2,
  // );
}
