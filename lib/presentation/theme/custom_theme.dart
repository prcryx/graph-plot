import 'package:flutter/material.dart';
import 'package:graph_plot/presentation/theme/colors.dart';

class CustomColorTheme {
  static ThemeData getTheme() {
    final ColorScheme darkColorScheme = const ColorScheme.dark().copyWith(
      brightness: Brightness.light,
      primary: CustomColors.primaryColor,
      onPrimary: CustomColors.blushingLilac,
      secondary: CustomColors.secondaryColor,
      onSecondary: CustomColors.scarletTwilight,
      background: CustomColors.scarletTwilight,
      onBackground: CustomColors.snowflake,
      surface: CustomColors.charcoalAsh,
      onSurface: CustomColors.snowflake,
      error: CustomColors.sunsetEmber,
      onError: CustomColors.snowflake,
    );

    return ThemeData.from(
      colorScheme: darkColorScheme,
    );
  }
}
