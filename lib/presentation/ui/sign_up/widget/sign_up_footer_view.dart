import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:v_pitch/core/constants/app_strings.dart';
import 'package:v_pitch/core/constants/app_text_styles.dart';
import 'package:v_pitch/gen/colors.gen.dart';
import 'package:v_pitch/presentation/ui/widgets/app_social_button.dart';

import '../../../router/app_router.dart';

class SignUpFooterView extends StatelessWidget {
  const SignUpFooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: ColorName.textColor,
                ),
                child: SizedBox(
                  height: 1.0,
                ),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              AppStrings.kSignInWith,
              style: AppTextStyles.regularText,
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: ColorName.textColor,
                ),
                child: SizedBox(
                  height: 1.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
        const Row(
          children: [
            Expanded(
              child: AppSocialButton(
                isGoogle: true,
                isShortText: true,
              ),
            ),
            SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: AppSocialButton(
                isShortText: true,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.kAlreadyHaveAccount,
              style: AppTextStyles.regularText,
            ),
            const SizedBox(
              width: 4.0,
            ),
            GestureDetector(
              onTap: () {
                context.push(AppRouter.signIn);
              },
              child: const Text(
                AppStrings.kSignIn,
                style: AppTextStyles.highlightText,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
      ],
    );
  }
}
