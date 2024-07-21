import 'package:flutter/material.dart';

import '../../../../core/shared/constants/_constants.dart';
import 'flag_stack.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Account Information',
              style: AppTextStyles.headingSectionHeader.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
          Spacing.vertRegular(),
          SizedBox(
            height: 126,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Container(
                  width: 264,
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'I USD = 1,560.00 NGN',
                              style: AppTextStyles.body1Header.copyWith(
                                color: AppColors.lightGray10,
                              ),
                            ),
                          ),
                          const FlagStack(
                            topFlag: AppSvgAssets.flagNigeria,
                            bottomFlag: AppSvgAssets.flagUS,
                          ),
                        ],
                      ),
                      Spacing.vertSmall(),
                      Text(
                        'These amounts don’t include fees. Lat updated: Wednesday, July 3, 2024 at 12:15 PM',
                        style: AppTextStyles.body3High.copyWith(
                          color: AppColors.darkLow,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'View rates',
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
                          Spacing.horizTiny(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                            color: AppColors.darkPrimary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 264,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$0.00 left of 10,000',
                            style: AppTextStyles.body1Header.copyWith(
                              color: AppColors.lightGray10,
                            ),
                          ),
                        ],
                      ),
                      Spacing.vertSmall(),
                      Text(
                        'Daily limit',
                        style: AppTextStyles.body3High.copyWith(
                          color: AppColors.darkLow,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'View all limits',
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
                          Spacing.horizTiny(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                            color: AppColors.darkPrimary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
