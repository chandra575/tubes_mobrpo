import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/common/styles/spacing_styles.dart';
import 'package:flutter_tubes_galon/utils/constants/colors.dart';
import 'package:flutter_tubes_galon/utils/constants/image_strings.dart';
import 'package:flutter_tubes_galon/utils/constants/sizes.dart';
import 'package:flutter_tubes_galon/utils/constants/text_strings.dart';
import 'package:flutter_tubes_galon/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Header (Logo, login title & subtitle)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    isDark ? AppImages.lightAppLogo : AppImages.darkAppLogo,
                    height: 100,
                  ),
                  Text(
                    AppTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                  Text(
                    AppTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),

              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: AppTexts.email),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: AppTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwInputFields / 2,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(AppTexts.rememberMe)
                            ],
                          ),
                          const Text(AppTexts.forgetPassword)
                        ],
                      ),

                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),

                      // Sign In Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(AppTexts.signIn))),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      // Create Account Button
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(AppTexts.createAccount))),

                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                    ],
                  ),
                ),
              ),

              // Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: isDark ? AppColors.darkGrey : AppColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    AppTexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: isDark ? AppColors.darkGrey : AppColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(AppImages.google),
                        width: AppSizes.iconMd,
                        height: AppSizes.iconMd,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(AppImages.facebook),
                        width: AppSizes.iconMd,
                        height: AppSizes.iconMd,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
