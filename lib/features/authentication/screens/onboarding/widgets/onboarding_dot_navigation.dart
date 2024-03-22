import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_tubes_galon/utils/constants/colors.dart';
import 'package:flutter_tubes_galon/utils/constants/sizes.dart';
import 'package:flutter_tubes_galon/utils/device/device_utility.dart';
import 'package:flutter_tubes_galon/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onBoardingController = OnboardingController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
              activeDotColor: isDark ? AppColors.light : AppColors.dark,
              dotHeight: 7),
          controller: onBoardingController.pageController,
          onDotClicked: (index) => onBoardingController.dotNavigationClick(index),
          count: 3),
    );
  }
}