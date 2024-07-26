import 'package:flutter/material.dart';
import 'package:v_pitch/gen/colors.gen.dart';
import 'package:v_pitch/presentation/ui/rival/widget/rival_item_date_time_view.dart';
import 'package:v_pitch/presentation/ui/rival/widget/rival_item_header_view.dart';

class RivalItem extends StatelessWidget {
  const RivalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            RivalItemHeaderView(),
            SizedBox(
              height: 12.0,
            ),
            Divider(
              color: ColorName.darkOrange,
            ),
            SizedBox(
              height: 12.0,
            ),
            RivalItemDateTimeView(),
          ],
        ),
      ),
    );
  }
}
