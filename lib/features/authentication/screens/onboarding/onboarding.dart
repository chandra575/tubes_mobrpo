import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_tubes_galon/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_tubes_galon/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:flutter_tubes_galon/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_tubes_galon/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_tubes_galon/utils/constants/image_strings.dart';
import 'package:flutter_tubes_galon/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingController = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onBoardingController.pageController,
            onPageChanged: (index) => onBoardingController.updatePageIndicator(index),
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subtitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subtitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subtitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNext()
        ],
      ),
    );
  }
}


