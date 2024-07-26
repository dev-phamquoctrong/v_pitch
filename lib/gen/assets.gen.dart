/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/pngs
  $AssetsImagesPngsGen get pngs => const $AssetsImagesPngsGen();

  /// Directory path: assets/images/svgs
  $AssetsImagesSvgsGen get svgs => const $AssetsImagesSvgsGen();
}

class $AssetsImagesPngsGen {
  const $AssetsImagesPngsGen();

  /// File path: assets/images/pngs/bg_login.png
  AssetGenImage get bgLogin =>
      const AssetGenImage('assets/images/pngs/bg_login.png');

  /// File path: assets/images/pngs/header_forgot_password.png
  AssetGenImage get headerForgotPassword =>
      const AssetGenImage('assets/images/pngs/header_forgot_password.png');

  /// File path: assets/images/pngs/header_register.png
  AssetGenImage get headerRegister =>
      const AssetGenImage('assets/images/pngs/header_register.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bgLogin, headerForgotPassword, headerRegister];
}

class $AssetsImagesSvgsGen {
  const $AssetsImagesSvgsGen();

  /// File path: assets/images/svgs/box.svg
  SvgGenImage get box => const SvgGenImage('assets/images/svgs/box.svg');

  /// File path: assets/images/svgs/competition.svg
  SvgGenImage get competition =>
      const SvgGenImage('assets/images/svgs/competition.svg');

  /// File path: assets/images/svgs/facebook.svg
  SvgGenImage get facebook =>
      const SvgGenImage('assets/images/svgs/facebook.svg');

  /// File path: assets/images/svgs/football_field.svg
  SvgGenImage get footballField =>
      const SvgGenImage('assets/images/svgs/football_field.svg');

  /// File path: assets/images/svgs/google.svg
  SvgGenImage get google => const SvgGenImage('assets/images/svgs/google.svg');

  /// File path: assets/images/svgs/home.svg
  SvgGenImage get home => const SvgGenImage('assets/images/svgs/home.svg');

  /// File path: assets/images/svgs/profile_setting.svg
  SvgGenImage get profileSetting =>
      const SvgGenImage('assets/images/svgs/profile_setting.svg');

  /// File path: assets/images/svgs/question_mask.svg
  SvgGenImage get questionMask =>
      const SvgGenImage('assets/images/svgs/question_mask.svg');

  /// File path: assets/images/svgs/versus.svg
  SvgGenImage get versus => const SvgGenImage('assets/images/svgs/versus.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        box,
        competition,
        facebook,
        footballField,
        google,
        home,
        profileSetting,
        questionMask,
        versus
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
