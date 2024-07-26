import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/enums/text_form_field_type.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_form_field.dart';
import 'sign_up_check_box.dart';

class SignUpFormView extends HookWidget {
  const SignUpFormView({super.key});

  @override
  Widget build(BuildContext context) {
    final isCheckedKeepSigned = useState(false);
    final isCheckedEmailAbout = useState(false);
    return Column(
      children: [
        const AppTextFormField(
          type: TextFormFieldType.username,
          isWhiteBackground: true,
        ),
        const SizedBox(
          height: 6.0,
        ),
        const AppTextFormField(
          type: TextFormFieldType.email,
          isWhiteBackground: true,
        ),
        const SizedBox(
          height: 6.0,
        ),
        const AppTextFormField(
          type: TextFormFieldType.password,
          isWhiteBackground: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: SignUpCheckBox(
            text: AppStrings.kKeepMeSignedIn,
            onChanged: (value) {
              isCheckedKeepSigned.value = value;
              // TODO
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: SignUpCheckBox(
            text: AppStrings.kEmailMe,
            onChanged: (value) {
              isCheckedEmailAbout.value = value;
              // TODO
            },
          ),
        ),
        const AppButton(
          text: AppStrings.kCreateAccount,
        ),
      ],
    );
  }
}
