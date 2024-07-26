import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:v_pitch/core/constants/app_strings.dart';
import 'package:v_pitch/core/constants/app_text_styles.dart';
import 'package:v_pitch/core/enums/text_form_field_type.dart';
import 'package:v_pitch/gen/colors.gen.dart';

class AppTextFormField extends HookWidget {
  const AppTextFormField({
    super.key,
    this.type = TextFormFieldType.none,
    this.isWhiteBackground = false,
  });

  final TextFormFieldType type;
  final bool isWhiteBackground;

  @override
  Widget build(BuildContext context) {
    final isShowPassword = useState(false);
    final focusNode = useRef(FocusNode());
    final isFocus = useState(false);
    useEffect(
      () {
        focusNode.value.addListener(
          () {
            if (focusNode.value.hasFocus) {
              isFocus.value = true;
            } else {
              isFocus.value = false;
            }
          },
        );
        return;
      },
    );
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isWhiteBackground ? Colors.white : ColorName.lightOrange,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Builder(
              builder: (context) {
                if (type == TextFormFieldType.none) {
                  return const SizedBox();
                }
                return Row(
                  children: [
                    const SizedBox(
                      width: 16.0,
                    ),
                    type == TextFormFieldType.username
                        ? Icon(
                            Icons.person_outline_outlined,
                            color: isFocus.value ? ColorName.darkOrange : null,
                          )
                        : type == TextFormFieldType.password
                            ? Icon(
                                Icons.lock_outline,
                                color:
                                    isFocus.value ? ColorName.darkOrange : null,
                              )
                            : Icon(
                                Icons.email_outlined,
                                color:
                                    isFocus.value ? ColorName.darkOrange : null,
                              ),
                    const SizedBox(
                      width: 16.0,
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: TextFormField(
                focusNode: focusNode.value,
                obscureText: isShowPassword.value,
                decoration: InputDecoration(
                  hintText: type == TextFormFieldType.username
                      ? AppStrings.kUsername
                      : type == TextFormFieldType.password
                          ? AppStrings.kPassword
                          : AppStrings.kEmail,
                  hintStyle: AppTextStyles.hintText.copyWith(
                    color: isFocus.value ? ColorName.darkOrange : null,
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                style: AppTextStyles.titleText.copyWith(
                  color: isFocus.value ? ColorName.darkOrange : null,
                  decorationThickness: 0.0,
                ),
              ),
            ),
            Builder(
              builder: (context) {
                if (type != TextFormFieldType.password) {
                  return const SizedBox();
                }
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        isShowPassword.value = !isShowPassword.value;
                      },
                      child: isShowPassword.value
                          ? Icon(
                              Icons.visibility_off,
                              color:
                                  isFocus.value ? ColorName.darkOrange : null,
                            )
                          : Icon(
                              Icons.visibility,
                              color:
                                  isFocus.value ? ColorName.darkOrange : null,
                            ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
