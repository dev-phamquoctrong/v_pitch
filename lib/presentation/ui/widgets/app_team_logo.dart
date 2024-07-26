import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppTeamLogo extends StatelessWidget {
  final String path;
  final double padding;
  final bool isLocal;
  final bool isSvg;

  const AppTeamLogo({
    super.key,
    required this.path,
    this.padding = 0.0,
  })  : isSvg = false,
        isLocal = true;

  const AppTeamLogo.network({
    super.key,
    required this.path,
    this.padding = 0.0,
  })  : isSvg = false,
        isLocal = false;

  const AppTeamLogo.localSvg({
    super.key,
    required this.path,
    this.padding = 0.0,
  })  : isSvg = true,
        isLocal = true;

  const AppTeamLogo.networkSvg({
    super.key,
    required this.path,
    this.padding = 0.0,
  })  : isSvg = true,
        isLocal = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      elevation: 10.0,
      child: CircleAvatar(
        radius: 16.0,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Builder(
            builder: (context) {
              if (isSvg && isLocal) {
                return SvgPicture.asset(path);
              }
              if (isSvg && !isLocal) {
                return SvgPicture.network(path);
              }
              if (!isSvg && !isLocal) {
                return Image.network(path);
              }
              return Image.asset(path);
            },
          ),
        ),
      ),
    );
  }
}
