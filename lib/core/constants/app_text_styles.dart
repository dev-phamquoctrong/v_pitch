import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class AppTextStyles {
  static const littleText = TextStyle(
    color: ColorName.textColor,
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
  );

  static const hintText = TextStyle(
    color: ColorName.textColor,
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
  );

  static const regularText = TextStyle(
    color: ColorName.textColor,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );

  static const highlightText = TextStyle(
    color: ColorName.textColor,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
  );

  static const titleText = TextStyle(
    color: ColorName.textColor,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );

  static const subTitle = TextStyle(
    color: ColorName.textColor,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
  );
}
