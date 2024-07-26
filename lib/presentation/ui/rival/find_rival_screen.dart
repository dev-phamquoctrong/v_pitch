import 'package:flutter/material.dart';
import 'package:v_pitch/core/constants/app_strings.dart';
import 'package:v_pitch/presentation/ui/rival/widget/rival_item.dart';
import 'package:v_pitch/presentation/ui/widgets/app_bar_view.dart';

class FindRivalScreen extends StatelessWidget {
  const FindRivalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarView(
        title: AppStrings.kNearRival,
        isDisplayBack: false,
        isTransparent: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        itemBuilder: (context, index) {
          return const Column(
            children: [
              SizedBox(
                height: 24.0,
              ),
              RivalItem(),
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
