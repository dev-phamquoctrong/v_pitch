import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../gen/assets.gen.dart';
import '../../widgets/app_team_logo.dart';

class RivalItemHeaderView extends StatelessWidget {
  const RivalItemHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          children: [
            AppTeamLogo.network(
              path:
                  'https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/640px-Chelsea_FC.svg.png',
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Chelsea FC',
              style: AppTextStyles.littleText,
            ),
            // TODO
          ],
        ),
        const SizedBox(
          width: 24.0,
        ),
        Assets.images.svgs.versus.svg(
          width: 32.0,
          height: 32.0,
        ),
        const SizedBox(
          width: 24.0,
        ),
        Column(
          children: [
            AppTeamLogo.localSvg(
              path: Assets.images.svgs.questionMask.path,
              padding: 6.0,
            ),
            const SizedBox(
              height: 4.0,
            ),
            const Text(
              '...',
              style: AppTextStyles.littleText,
            ), // TODO
          ],
        ),
      ],
    );
  }
}
