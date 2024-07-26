import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_text_styles.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarView({
    super.key,
    required this.title,
    this.onBackPressed,
    this.actions,
    this.leading,
    this.isDisplayBack = true,
    this.isTransparent = false,
  });

  final String title;
  final GestureTapCallback? onBackPressed;
  final List<Widget>? actions;
  final bool isDisplayBack;
  final Widget? leading;
  final bool isTransparent;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: isTransparent ? Colors.transparent : null,
      title: Text(
        title,
        style: AppTextStyles.titleText,
      ),
      leading: Builder(
        builder: (context) {
          if (leading != null) {
            return leading!;
          }
          if (!isDisplayBack) {
            return const SizedBox();
          }
          return IconButton(
            onPressed: () {
              if (onBackPressed != null) {
                onBackPressed!();
              } else {
                if (!context.canPop()) {
                  return;
                }
                context.pop();
              }
            },
            icon: Icon(
              Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios_new,
            ),
          );
        },
      ),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
