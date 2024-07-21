import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/shared/constants/_constants.dart';
import '../../../../core/shared/widgets/app_button.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Get started',
                  style: AppTextStyles.headingSectionHeader.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
              Text(
                'View all steps',
                style: AppTextStyles.body2Link.copyWith(
                  color: AppColors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.darkPrimary,
                  shadows: [
                    const BoxShadow(
                      color: AppColors.darkPrimary,
                      offset: Offset(0, -1.5),
                    ),
                  ],
                  decorationThickness: 2,
                ),
              ),
            ],
          ),
          Spacing.vertRegular(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Verify your identity, Miracle!',
                            style: AppTextStyles.body1High.copyWith(
                              color: AppColors.darkRegular,
                            ),
                          ),
                          Text(
                            'Submit additional information to verify your identity.',
                            style: AppTextStyles.body2Regular.copyWith(
                              color: AppColors.darkLow,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacing.horizMedium(),
                    SizedBox.square(
                      dimension: 48,
                      child: Stack(
                        children: [
                          const Positioned.fill(
                            child: CircularProgressIndicator(
                              value: 0.4,
                              backgroundColor: AppColors.progressBackground,
                              valueColor:
                                  AlwaysStoppedAnimation(AppColors.darkPrimary),
                              strokeCap: StrokeCap.round,
                              strokeWidth: 4,
                            ),
                          ),
                          Center(
                            child: SvgPicture.asset(AppSvgAssets.securityLogo),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacing.vertRegular(),
                Row(
                  children: [
                    const AppButton(
                      label: 'Verify identity',
                      isCollapsed: true,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Dismiss',
                        style: AppTextStyles.body2Regular.copyWith(
                          color: AppColors.darkRegular,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
