/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  $LibAssetsGen get assets => const $LibAssetsGen();
}

class $LibAssetsGen {
  const $LibAssetsGen();

  $LibAssetsIconsGen get icons => const $LibAssetsIconsGen();
  $LibAssetsImagesGen get images => const $LibAssetsImagesGen();
}

class $LibAssetsIconsGen {
  const $LibAssetsIconsGen();

  /// File path: lib/assets/icons/bluePen.png
  AssetGenImage get bluePen =>
      const AssetGenImage('lib/assets/icons/bluePen.png');

  /// File path: lib/assets/icons/downArrow.png
  AssetGenImage get downArrow =>
      const AssetGenImage('lib/assets/icons/downArrow.png');

  /// File path: lib/assets/icons/editedProfile.png
  AssetGenImage get editedProfile =>
      const AssetGenImage('lib/assets/icons/editedProfile.png');

  /// File path: lib/assets/icons/homeIcon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('lib/assets/icons/homeIcon.png');

  /// File path: lib/assets/icons/podCast.png
  AssetGenImage get podCast =>
      const AssetGenImage('lib/assets/icons/podCast.png');

  /// File path: lib/assets/icons/sharp.png
  AssetGenImage get sharp => const AssetGenImage('lib/assets/icons/sharp.png');

  /// File path: lib/assets/icons/userIcon.png
  AssetGenImage get userIcon =>
      const AssetGenImage('lib/assets/icons/userIcon.png');

  /// File path: lib/assets/icons/wIcon.png
  AssetGenImage get wIcon => const AssetGenImage('lib/assets/icons/wIcon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bluePen,
        downArrow,
        editedProfile,
        homeIcon,
        podCast,
        sharp,
        userIcon,
        wIcon
      ];
}

class $LibAssetsImagesGen {
  const $LibAssetsImagesGen();

  /// File path: lib/assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('lib/assets/images/logo.png');

  /// File path: lib/assets/images/posterTest.png
  AssetGenImage get posterTest =>
      const AssetGenImage('lib/assets/images/posterTest.png');

  /// File path: lib/assets/images/profile.png
  AssetGenImage get profile =>
      const AssetGenImage('lib/assets/images/profile.png');

  /// File path: lib/assets/images/splash_screen.png
  AssetGenImage get splashScreen =>
      const AssetGenImage('lib/assets/images/splash_screen.png');

  /// File path: lib/assets/images/techBot.svg
  String get techBot => 'lib/assets/images/techBot.svg';

  /// List of all assets
  List<dynamic> get values =>
      [logo, posterTest, profile, splashScreen, techBot];
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
