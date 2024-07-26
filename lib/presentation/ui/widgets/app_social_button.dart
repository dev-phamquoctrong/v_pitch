import 'package:flutter/material.dart';
import 'package:v_pitch/core/constants/app_strings.dart';
import 'package:v_pitch/core/constants/app_text_styles.dart';
import 'package:v_pitch/gen/assets.gen.dart';

class AppSocialButton extends StatelessWidget {
  const AppSocialButton({
    super.key,
    this.isGoogle = false,
    this.isShortText = false,
  });

  final bool isGoogle;
  final bool isShortText;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            const SizedBox(
              width: 30.0,
            ),
            isGoogle
                ? Assets.images.svgs.google.svg(
                    width: 24.0,
                    height: 24.0,
                  )
                : Assets.images.svgs.facebook.svg(
                    width: 24.0,
                    height: 24.0,
                  ),
            const SizedBox(
              width: 32.0,
            ),
            Builder(
              builder: (context) {
                late String text;
                if (isShortText) {
                  if (isGoogle) {
                    text = AppStrings.kGoogle;
                  } else {
                    text = AppStrings.kFacebook;
                  }
                } else {
                  if (isGoogle) {
                    text = AppStrings.kContinueWithGoogle;
                  } else {
                    text = AppStrings.kContinueWithFacebook;
                  }
                }
                return Text(
                  text,
                  style: AppTextStyles.titleText,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
