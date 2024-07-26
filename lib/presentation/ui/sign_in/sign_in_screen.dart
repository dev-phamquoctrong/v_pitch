import 'package:flutter/material.dart';
import 'package:v_pitch/gen/assets.gen.dart';

import 'widget/sign_in_with_email_view.dart';
import 'widget/sign_in_with_social_view.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0.0,
            right: 0.0,
            left: 0.0,
            child: Assets.images.pngs.bgLogin.image(
              fit: BoxFit.contain,
            ),
          ),
          const Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Column(
              children: [
                SignInWithSocialView(),
                SizedBox(
                  height: 24.0,
                ),
                SignInWithEmailView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
