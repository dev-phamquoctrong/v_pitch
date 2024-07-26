import 'package:flutter/material.dart';
import 'package:v_pitch/core/constants/app_strings.dart';
import 'package:v_pitch/gen/colors.gen.dart';
import 'package:v_pitch/presentation/ui/home/widget/home_header_time_view.dart';

import '../widgets/app_bar_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.lightOrange,
      appBar: AppBarView(
        isDisplayBack: false,
        title: "${AppStrings.kHello}Frankie",
        actions: [
          CircleAvatar(
            backgroundColor: ColorName.darkOrange,
            radius: 18.0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://reqres.in/img/faces/12-image.jpg',
              ),
              radius: 16.0,
            ),
          ),
          SizedBox(
            width: 12.0,
          )
        ],
        isTransparent: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            HomeHeaderTimeView(),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
