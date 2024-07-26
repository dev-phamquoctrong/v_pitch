import 'package:flutter/cupertino.dart';
import 'package:v_pitch/core/constants/app_text_styles.dart';
import 'package:v_pitch/gen/colors.gen.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorName.darkOrange,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.titleText,
            ),
          ),
        ),
      ),
    );
  }
}
