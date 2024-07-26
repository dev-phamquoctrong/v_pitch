import 'package:flutter/material.dart';
import 'package:v_pitch/gen/colors.gen.dart';

import '../../../../core/constants/app_text_styles.dart';

class RivalItemDateTimeView extends StatelessWidget {
  const RivalItemDateTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    const footballFieldName = 'Sân bóng đá Tuyên Sơn';
    const date = 'Thứ 7, 08/08/2024';
    const time = '17:30';
    return const Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.place_outlined,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    footballFieldName,
                    style: AppTextStyles.littleText,
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    date,
                    style: AppTextStyles.littleText,
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(
          time,
          style: TextStyle(
            fontSize: 24.0,
            color: ColorName.darkGreen,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
