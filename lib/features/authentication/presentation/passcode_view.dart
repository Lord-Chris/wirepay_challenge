import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/shared/constants/_constants.dart';
import 'passcode_viewmodel.dart';

class PasscodeView extends HookWidget {
  PasscodeView({super.key});

  final model = PasscodeViewModel();
  @override
  Widget build(BuildContext context) {
    final viewModel = useListenable(model);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacing.vertLarge(),
            Text(
              'Create pin',
              style: AppTextStyles.headingSheetTitle.copyWith(
                color: AppColors.darkRegular,
              ),
            ),
            Spacing.vertSmall(),
            Text(
              'Pin should be 6 to 12 digits long',
              style: AppTextStyles.body2Regular.copyWith(
                color: AppColors.darkLow,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  6,
                  (index) {
                    final isActive = index < viewModel.passcode.length;
                    return Container(
                      margin: const EdgeInsets.all(7),
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: isActive
                            ? AppColors.darkPrimary.withOpacity(.3)
                            : AppColors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.circle,
                        size: 12,
                        color: isActive
                            ? AppColors.darkPrimary
                            : AppColors.darkDisabled,
                      ),
                    );
                  },
                ),
              ),
            ),
            Column(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index2) {
                        final val = index * 3 + index2 + 1;
                        return SizedBox.square(
                          dimension: 70,
                          child: Center(
                            child: SizedBox.square(
                              dimension: 40,
                              child: TextButton(
                                onPressed: () => viewModel.onDigitPress('$val'),
                                child: Text(
                                  '$val',
                                  style: AppTextStyles.avenirMedium24.copyWith(
                                    color: AppColors.darkRegular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (viewModel.passcode.isNotEmpty)
                  SizedBox.square(
                    dimension: 70,
                    child: Center(
                      child: TextButton(
                        onPressed: viewModel.onDeletePress,
                        child: Center(
                          child: SvgPicture.asset(AppSvgAssets.eraser),
                        ),
                      ),
                    ),
                  ),
                SizedBox.square(
                  dimension: 70,
                  child: Center(
                    child: SizedBox.square(
                      dimension: 40,
                      child: TextButton(
                        onPressed: () => viewModel.onDigitPress('0'),
                        child: Text(
                          '0',
                          style: AppTextStyles.avenirMedium24.copyWith(
                            color: AppColors.darkRegular,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (viewModel.passcode.isNotEmpty)
                  SizedBox.square(
                    dimension: 70,
                    child: Center(
                      child: TextButton(
                        onPressed: viewModel.goToHomeView,
                        child: SvgPicture.asset(
                          AppSvgAssets.nextButton,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Spacing.vertRegular(),
          ],
        ),
      ),
    );
  }
}
