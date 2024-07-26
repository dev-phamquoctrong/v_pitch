import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:v_pitch/core/enums/bottom_navigation_type.dart';
import 'package:v_pitch/gen/assets.gen.dart';
import 'package:v_pitch/gen/colors.gen.dart';

import '../../router/app_router.dart';

class MainHomeScreen extends HookWidget {
  const MainHomeScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final currentTab = useState(BottomNavigationType.home);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: BottomNavigationType.home.title,
            icon: Assets.images.svgs.home.svg(
              width: 24.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                currentTab.value == BottomNavigationType.home
                    ? ColorName.darkOrange
                    : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: BottomNavigationType.rival.title,
            icon: Assets.images.svgs.competition.svg(
              width: 24.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                currentTab.value == BottomNavigationType.rival
                    ? ColorName.darkOrange
                    : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: BottomNavigationType.field.title,
            icon: Assets.images.svgs.footballField.svg(
              width: 24.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                currentTab.value == BottomNavigationType.field
                    ? ColorName.darkOrange
                    : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: BottomNavigationType.profile.title,
            icon: Assets.images.svgs.profileSetting.svg(
              width: 24.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                currentTab.value == BottomNavigationType.profile
                    ? ColorName.darkOrange
                    : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
        onTap: (int index) {
          currentTab.value = BottomNavigationType.values[index];
          switch (index) {
            case 0:
              context.push(AppRouter.home);
              return;
            case 1:
              context.push(AppRouter.rival);
              return;
            case 2:
              context.push(AppRouter.field);
              return;
            case 3:
              context.push(AppRouter.profile);
              return;
          }
        },
        backgroundColor: ColorName.lightOrange,
        selectedItemColor: ColorName.darkOrange,
        unselectedItemColor: ColorName.textColor,
        currentIndex: currentTab.value.index,
      ),
      body: child,
    );
  }
}
