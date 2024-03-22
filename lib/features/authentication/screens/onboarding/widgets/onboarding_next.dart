import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_tubes_galon/utils/constants/colors.dart';
import 'package:flutter_tubes_galon/utils/constants/sizes.dart';
import 'package:flutter_tubes_galon/utils/device/device_utility.dart';
import 'package:flutter_tubes_galon/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      right: AppSizes.defaultSpace,
        child: ElevatedButton(
      onPressed: () {OnboardingController.instance.nextPage();},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: isDark ? AppColors.primary : AppColors.black,

      ),
      child: const Icon(Iconsax.arrow_right_3),
    ));
  }
}