import 'package:flutter/material.dart';

import 'package:resources/themes/color_scheme/index.dart';
import 'package:resources/themes/models/index.dart';
import 'package:resources/themes/text_styles/index.dart';

class ThemeHelper {
  static ThemeData buildLightTheme() => _buildTheme(Brightness.light);

  static ThemeData buildDarkTheme() => _buildTheme(Brightness.dark);

  static ThemeData _buildTheme(
    Brightness brightness,
  ) {
    final colorScheme = _getColorScheme(brightness);

    final theme = ThemeData.from(
      colorScheme: colorScheme.materialColorScheme,
      textTheme: const TextTheme(
        bodyMedium: CustomTextStyles.bodyText,
        bodyLarge: CustomTextStyles.bodyTextLarge,
      ),
    );

    return theme.copyWith(
      extensions: [colorScheme],
    );
  }

  static CustomColorSchemeMdl _getColorScheme(
    Brightness brightness,
  ) {
    if (brightness == Brightness.light) {
      return CustomColorScheme.lightColorScheme;
    } else {
      return CustomColorScheme.darkColorScheme;
    }
  }
}
