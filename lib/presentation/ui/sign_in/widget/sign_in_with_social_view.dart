import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../widgets/app_social_button.dart';

class SignInWithSocialView extends StatelessWidget {
  const SignInWithSocialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.kWelcomeTo,
          style: AppTextStyles.regularText.copyWith(
            fontSize: 32.0,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          child: AppSocialButton(
            isGoogle: true,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          child: AppSocialButton(),
        ),
      ],
    );
  }
}
