import 'package:flutter/material.dart';
import 'package:tejaswitandel_s_application149/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.62),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientLimeToGreenA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(2.77, 2.02),
          end: Alignment(1.96, -1.63),
          colors: [
            appTheme.lime800,
            appTheme.greenA400,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToOnPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(2.86, 1.77),
          end: Alignment(1.91, -2.02),
          colors: [
            appTheme.redA700,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToDeepOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(2.82, 1.88),
          end: Alignment(1.87, -1.82),
          colors: [
            appTheme.yellow400,
            appTheme.deepOrangeA700,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder13 => BorderRadius.circular(
        13.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL29 => BorderRadius.vertical(
        top: Radius.circular(29.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder9 => BorderRadius.circular(
        9.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
