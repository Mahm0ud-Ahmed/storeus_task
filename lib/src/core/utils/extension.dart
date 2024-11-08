import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:storeus_task/src/core/utils/constant.dart';
import 'package:storeus_task/src/core/utils/enums.dart';

extension SizeBox on num? {
  SizedBox get h => SizedBox(height: this?.toDouble());
  SizedBox get w => SizedBox(width: this?.toDouble());
}

extension ContextServices on BuildContext {
  Future push(Widget page) => Navigator.of(this).push(MaterialPageRoute(builder: (_) => page));

  FlutterView get view => View.of(this);

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
  Size get screenSize => MediaQuery.sizeOf(this);

  ({Orientation orientation, bool isPortrait}) get orientationInfo =>
      (orientation: MediaQuery.orientationOf(this), isPortrait: MediaQuery.maybeOrientationOf(this) == Orientation.portrait);

  double get bottomPadding => kAppBarHeight + (view.viewPadding.bottom / 2.5);

  ({double width, double height, double smallSide, double largeSide}) get sizeSide => orientationInfo.isPortrait
      ? (width: screenSize.width, height: screenSize.height, smallSide: screenSize.width, largeSide: screenSize.height)
      : (width: screenSize.width, height: screenSize.height, smallSide: screenSize.height, largeSide: screenSize.width);

  double get deviceWidth => sizeSide.smallSide > 768 ? 768 : sizeSide.smallSide;

  bool get isMobile => getDeviceScreenType == DeviceScreenType.mobile;
  bool get isTablet => getDeviceScreenType == DeviceScreenType.tablet;

  DeviceScreenType get getDeviceScreenType {
    switch (sizeSide.smallSide) {
      case <= 480:
        return DeviceScreenType.mobile;
      default:
        return DeviceScreenType.tablet;
    }
  }

  TextStyle? get headlineL => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineM => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineS => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get displayL => Theme.of(this).textTheme.displayLarge;
  TextStyle? get displayM => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displayS => Theme.of(this).textTheme.displaySmall;
  TextStyle? get bodyL => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyM => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyS => Theme.of(this).textTheme.bodySmall;
  TextStyle? get titleL => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleM => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleS => Theme.of(this).textTheme.titleSmall;
  TextStyle? get labelL => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelM => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelS => Theme.of(this).textTheme.labelSmall;
}

extension DateTimeExtension on DateTime {
  String get dateFormatter => DateFormat('d-MM-yyyy').format(this); // Example: 8-11-2024
  String get timeFormatter => DateFormat.jm().format(this); // Example: 9:22 AM
}
