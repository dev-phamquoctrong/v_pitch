import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:v_pitch/core/constants/app_text_styles.dart';
import 'package:v_pitch/gen/colors.gen.dart';

class SignUpCheckBox extends HookWidget {
  const SignUpCheckBox({
    super.key,
    required this.text,
    required this.onChanged,
  });

  final String text;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);
    return Row(
      children: [
        Checkbox(
          value: isChecked.value,
          onChanged: (value) {
            isChecked.value = !isChecked.value;
            onChanged(isChecked.value);
          },
          activeColor: ColorName.darkOrange,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.littleText,
          ),
        ),
      ],
    );
  }
}
