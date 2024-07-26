import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:v_pitch/core/constants/app_strings.dart';
import 'package:v_pitch/core/constants/app_text_styles.dart';
import 'package:v_pitch/gen/assets.gen.dart';
import 'package:v_pitch/gen/colors.gen.dart';
import 'package:v_pitch/presentation/ui/widgets/app_button.dart';
import 'package:v_pitch/presentation/ui/widgets/app_text_form_field.dart';

import '../../router/app_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightOrange,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 32.0,
                ),
                Text(
                  AppStrings.kForgotPassword,
                  style: AppTextStyles.regularText.copyWith(
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64.0,
                  ),
                  child: Assets.images.pngs.headerForgotPassword.image(),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Text(
                          AppStrings.kForgotPasswordDesc,
                          style: AppTextStyles.regularText,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        AppTextFormField(),
                        SizedBox(
                          height: 12.0,
                        ),
                        AppButton(text: AppStrings.kSubmit),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      AppStrings.kRememberPassword,
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
                  height: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
