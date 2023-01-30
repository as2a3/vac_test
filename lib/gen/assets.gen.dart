/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/car.svg
  String get car => 'assets/svg/car.svg';

  /// File path: assets/svg/restaurant.svg
  String get restaurant => 'assets/svg/restaurant.svg';

  /// File path: assets/svg/store.svg
  String get store => 'assets/svg/store.svg';

  /// File path: assets/svg/un_selected_car.svg
  String get unSelectedCar => 'assets/svg/un_selected_car.svg';

  /// File path: assets/svg/un_selected_restaurant.svg
  String get unSelectedRestaurant => 'assets/svg/un_selected_restaurant.svg';

  /// File path: assets/svg/un_selected_store.svg
  String get unSelectedStore => 'assets/svg/un_selected_store.svg';

  /// File path: assets/svg/un_selected_user.svg
  String get unSelectedUser => 'assets/svg/un_selected_user.svg';

  /// File path: assets/svg/un_selected_wallet.svg
  String get unSelectedWallet => 'assets/svg/un_selected_wallet.svg';

  /// File path: assets/svg/user.svg
  String get user => 'assets/svg/user.svg';

  /// File path: assets/svg/wallet.svg
  String get wallet => 'assets/svg/wallet.svg';

  /// List of all assets
  List<String> get values => [
        car,
        restaurant,
        store,
        unSelectedCar,
        unSelectedRestaurant,
        unSelectedStore,
        unSelectedUser,
        unSelectedWallet,
        user,
        wallet
      ];
}

class Assets {
  Assets._();

  static const $AssetsSvgGen svg = $AssetsSvgGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
