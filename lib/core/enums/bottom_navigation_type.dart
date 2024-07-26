import 'package:v_pitch/core/constants/app_strings.dart';

enum BottomNavigationType {
  home,
  rival,
  field,
  profile,
}

extension BottomnavigationTypeExt on BottomNavigationType {
  String get title {
    switch (this) {
      case BottomNavigationType.home:
        return AppStrings.kHome;
      case BottomNavigationType.rival:
        return AppStrings.kRival;
      case BottomNavigationType.field:
        return AppStrings.kFootballField;
      case BottomNavigationType.profile:
        return AppStrings.kProfile;
    }
  }
}
