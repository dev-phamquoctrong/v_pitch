import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../gen/assets.gen.dart';

class NotFoundDataView extends StatelessWidget {
  const NotFoundDataView({
    super.key,
    this.textColor,
  });

  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.images.svgs.box.svg(
            width: 50.0,
            height: 50.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            AppStrings.kNotFoundData,
            style: AppTextStyles.titleText,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
