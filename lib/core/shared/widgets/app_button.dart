import 'package:flutter/material.dart';

import '../constants/_constants.dart';
import '_widgets.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color labelColor, buttonColor;
  final Color? borderColor, disabledColor;
  final double? width, height, borderRadius, labelSize, elevation;
  final bool isCollapsed, isDisabled;
  final bool hasBorder, isBusy, showFeedback;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final Widget? customChild, prefixWidget, suffixWidget;

  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.width,
    this.height,
    this.customChild,
    this.buttonColor = AppColors.darkPrimary,
    this.labelColor = AppColors.white,
    this.disabledColor,
    this.borderColor,
    this.isCollapsed = false,
    this.isBusy = false,
    this.isDisabled = false,
    this.showFeedback = true,
    this.elevation = 0,
    this.fontWeight,
    this.borderRadius,
    this.padding,
    this.labelSize,
    this.prefixWidget,
    this.suffixWidget,
  }) : hasBorder = false;

  const AppButton.outline({
    super.key,
    required this.label,
    this.onPressed,
    this.width,
    this.height,
    this.customChild,
    this.buttonColor = AppColors.white,
    this.labelColor = AppColors.white,
    this.disabledColor,
    this.borderColor = AppColors.darkPrimary,
    this.isCollapsed = false,
    this.isBusy = false,
    this.isDisabled = false,
    this.showFeedback = true,
    this.elevation = 0,
    this.fontWeight,
    this.borderRadius,
    this.padding,
    this.labelSize,
    this.prefixWidget,
    this.suffixWidget,
  }) : hasBorder = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? (isCollapsed ? null : double.maxFinite),
      height: height ?? (isCollapsed ? null : 40),
      child: MaterialButton(
        onPressed: isDisabled ? null : () => isBusy ? null : onPressed?.call(),
        disabledColor: disabledColor ?? buttonColor.withOpacity(0.3),
        color: buttonColor,
        minWidth: 0,
        elevation: elevation,
        clipBehavior: Clip.hardEdge,
        splashColor: showFeedback ? null : buttonColor,
        highlightColor: showFeedback ? null : buttonColor,
        highlightElevation: showFeedback ? 4 : 0,
        padding: padding ?? const EdgeInsets.fromLTRB(16, 10, 16, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 200),
          side: hasBorder
              ? BorderSide(
                  color: borderColor!.withOpacity(isDisabled ? 0.3 : 1),
                  width: 1,
                )
              : BorderSide.none,
        ),
        child: Builder(
          builder: (context) {
            if (isBusy) {
              return SizedBox.square(
                child: FittedBox(
                  child: AppLoader(
                    padding: 10,
                    color: labelColor,
                  ),
                ),
              );
            }

            if (customChild != null) return customChild!;

            return FittedBox(
              child: Row(
                children: [
                  if (prefixWidget != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: prefixWidget,
                    ),
                  Center(
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.buttonButton.copyWith(
                        fontSize: labelSize,
                        fontWeight: fontWeight,
                        color: labelColor,
                      ),
                    ),
                  ),
                  if (suffixWidget != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: suffixWidget,
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class AppBackButton extends StatelessWidget {
  final Alignment? alignment;
  final VoidCallback? onPressed;
  const AppBackButton({
    super.key,
    this.alignment,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      alignment: alignment ?? Alignment.centerLeft,
      onPressed: onPressed ?? Navigator.of(context).pop,
      padding: EdgeInsets.zero,
      icon: const Icon(
        Icons.chevron_left_rounded,
        size: 28,
        color: AppColors.black,
      ),
    );
  }
}
