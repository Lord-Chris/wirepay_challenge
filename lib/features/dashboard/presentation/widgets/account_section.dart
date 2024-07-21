import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/shared/constants/_constants.dart';
import '../../../../core/shared/widgets/app_button.dart';
import '../../domain/entities/account_model.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'My Accounts',
                  style: AppTextStyles.headingSectionHeader.copyWith(
                    color: AppColors.lightGray09,
                  ),
                ),
              ),
              Text(
                'Hide balance',
                style: AppTextStyles.body2High.copyWith(
                  color: AppColors.lightGray09,
                ),
              ),
              Spacing.horizSmall(),
              SvgPicture.asset(
                AppSvgAssets.viewOff,
              ),
            ],
          ),
        ),
        Spacing.vertRegular(),
        SizedBox(
          height: 115,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              ...accounts.map(
                (e) => Container(
                  width: 200,
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
                          SvgPicture.asset(e.image, width: 32),
                          Spacing.horizSmall(),
                          Text(
                            e.country,
                            style: AppTextStyles.body2High.copyWith(
                              color: AppColors.darkRegular,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text.rich(
                        TextSpan(
                          text: e.currency,
                          style: AppTextStyles.dynamic(20).copyWith(
                            color: AppColors.darkRegular,
                            fontFamily: AppTextStyles.nunitoSans,
                            fontWeight: FontWeight.w900,
                          ),
                          children: [
                            TextSpan(
                              text: e.balance,
                              style: AppTextStyles.avenirExtraBold20.copyWith(
                                color: AppColors.darkRegular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: AppColors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          size: 20,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Add another currency to your account',
                      style: AppTextStyles.body2High.copyWith(
                        color: AppColors.darkRegular,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            children: [
              const Flexible(
                child: AppButton(
                  label: 'Send Money',
                  isCollapsed: true,
                  width: 140,
                ),
              ),
              Spacing.horizSmall(),
              const Flexible(
                child: AppButton(
                  label: 'Add Money',
                  isCollapsed: true,
                  buttonColor: AppColors.darkBackground,
                  labelColor: AppColors.darkPrimary,
                  width: 140,
                ),
              ),
              Spacing.horizSmall(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: AppColors.darkPrimary,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.darkBackground,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
