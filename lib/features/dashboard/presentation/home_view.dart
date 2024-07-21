import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/shared/constants/_constants.dart';
import 'widgets/account_section.dart';
import 'widgets/ai_section.dart';
import 'widgets/info_section.dart';
import 'widgets/intro_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppImgAssets.profilePic, scale: 2),
        actions: [
          Container(
            padding: const EdgeInsets.fromLTRB(8, 4, 12, 4),
            decoration: BoxDecoration(
              color: AppColors.darkBackground,
              borderRadius: BorderRadius.circular(42),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppSvgAssets.gift),
                Spacing.horizSmall(),
                Text(
                  'Earn \$1',
                  style: AppTextStyles.buttonButton.copyWith(
                    color: AppColors.darkPrimary,
                  ),
                ),
              ],
            ),
          ),
          Spacing.horizSmall(),
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            icon: SvgPicture.asset(AppSvgAssets.scanBarcode),
          ),
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            icon: SvgPicture.asset(AppSvgAssets.notification),
          ),
          Spacing.horizTiny(),
        ],
      ),
      body: ListView(
        children: const [
          AccountSection(),
          IntroSection(),
          AISection(),
          InfoSection(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgAssets.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgAssets.wirepay),
            label: 'Wirepay',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgAssets.cards),
            label: 'Cards',
          ),
        ],
      ),
    );
  }
}
