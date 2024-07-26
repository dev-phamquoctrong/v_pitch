import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../gen/assets.gen.dart';

class SignUpHeaderView extends StatelessWidget {
  const SignUpHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 96.0,
          ),
          child: Assets.images.pngs.headerRegister.image(),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Text(
          AppStrings.kCreateAccount,
          style: AppTextStyles.regularText.copyWith(
            fontSize: 24.0,
          ),
        ),
      ],
    );
  }
}
