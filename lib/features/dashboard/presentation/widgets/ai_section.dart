import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/shared/constants/_constants.dart';

class AISection extends StatelessWidget {
  const AISection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wirepay AI',
            style: AppTextStyles.headingSectionHeader.copyWith(
              color: AppColors.black,
            ),
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
                _buildItem(
                  title: 'Stash plan',
                  amount: '-\$67.99',
                  label: 'Verifying identity',
                  status: 'Pending',
                ),
                Spacing.vertSmall(),
                const Divider(),
                Spacing.vertSmall(),
                _buildItem(
                  title: 'Wedding Trip',
                  amount: '\$2,300.00',
                  label: 'From USD account',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildItem({
    required String title,
    required String amount,
    required String label,
    String? status,
  }) {
    return Row(
      children: [
        SvgPicture.asset(AppSvgAssets.stash, height: 40),
        Spacing.horizRegular(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                style: AppTextStyles.avenirMedium16.copyWith(
                  color: AppColors.darkRegular,
                ),
              ),
              Spacing.vertExtraTiny(),
              Text(
                label,
                style: AppTextStyles.avenirRegular12.copyWith(
                  color: status != null ? AppColors.amber : AppColors.darkLow,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: AppTextStyles.body1High.copyWith(
                color: status != null ? AppColors.darkLow : AppColors.green,
              ),
            ),
            if (status != null) ...[
              Spacing.horizExtraTiny(),
              Text(
                status,
                style: AppTextStyles.avenirRegular12.copyWith(
                  color: AppColors.amber,
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
