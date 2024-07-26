import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:v_pitch/core/enums/text_form_field_type.dart';
import 'package:v_pitch/presentation/router/app_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../gen/colors.gen.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_form_field.dart';

class SignInWithEmailView extends StatelessWidget {
  const SignInWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            AppStrings.kLoginWithEmail,
            style: AppTextStyles.titleText,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
              color: ColorName.lightOrange,
            ),
            child: SizedBox(
              height: 2.0,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                const AppTextFormField(
                  type: TextFormFieldType.email,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const AppTextFormField(
                  type: TextFormFieldType.password,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: AppButton(
                        text: AppStrings.kSignIn,
                        onTap: () {
                          context.go(AppRouter.home);
                          // TODO
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                GestureDetector(
                  onTap: () {
                    context.push(AppRouter.forgotPassword);
                  },
                  child: Text(
                    AppStrings.kForgotPassword,
                    style: AppTextStyles.regularText.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: ColorName.textColor,
                      decorationThickness: 2.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppStrings.kDoNotHaveAccount,
                      style: AppTextStyles.regularText,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push(AppRouter.signUp);
                      },
                      child: const Text(
                        AppStrings.kSignUp,
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
        ],
      ),
    );
  }
}
