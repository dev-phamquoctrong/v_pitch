import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:v_pitch/core/constants/app_text_styles.dart';

class HomeHeaderTimeView extends StatelessWidget {
  const HomeHeaderTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    final fm = DateFormat('EEEE, dd/MM/yyyy', 'vi');
    final now = DateTime.now();
    final date = fm.format(now);
    return Text(
      date,
      style: AppTextStyles.titleText,
    );
  }
}
