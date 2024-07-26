import 'package:flutter/material.dart';
import 'package:v_pitch/gen/colors.gen.dart';
import 'package:v_pitch/presentation/ui/sign_up/widget/sign_up_footer_view.dart';
import 'package:v_pitch/presentation/ui/sign_up/widget/sign_up_form_view.dart';
import 'package:v_pitch/presentation/ui/sign_up/widget/sign_up_header_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.lightOrange,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SignUpHeaderView(),
                SizedBox(
                  height: 12.0,
                ),
                SignUpFormView(),
                SizedBox(
                  height: 12.0,
                ),
                SignUpFooterView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
