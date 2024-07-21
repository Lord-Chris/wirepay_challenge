import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/shared/constants/_constants.dart';

class FlagStack extends StatelessWidget {
  final String bottomFlag;
  final String topFlag;

  const FlagStack({
    super.key,
    required this.bottomFlag,
    required this.topFlag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 40,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: SvgPicture.asset(
                bottomFlag,
                height: 24,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(2),
              child: SvgPicture.asset(
                topFlag,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
