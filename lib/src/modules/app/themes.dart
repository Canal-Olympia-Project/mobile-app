import 'package:canal_olympia/src/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

/// Helper class for managing themes and colors.
class AppThemes {
  // The current app theme
  final _appTheme = 'primary';

// A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blueGray800,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primaryContainer.withOpacity(0.1),
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primaryContainer.withOpacity(0.1),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 16.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 14.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 12.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w100,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'IBM Plex Sans',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.deepPurpleA100,
          fontSize: 10.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.deepPurpleA100,
          fontSize: 8.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFBC002E),
    primaryContainer: Color(0X366D9DFF),
    secondary: Color(0X366D9DFF),
    secondaryContainer: Color(0XFFBC002E),
    tertiary: Color(0X366D9DFF),
    tertiaryContainer: Color(0XFFBC002E),

    // Background colors
    background: Color(0X366D9DFF),

    // Surface colors
    surface: Color(0X366D9DFF),
    surfaceTint: Color(0XFFEFEFF1),
    surfaceVariant: Color(0XFFBC002E),

    // Error colors
    error: Color(0XFFEFEFF1),
    errorContainer: Color(0XFFFF114B),
    onError: Color(0XFFBC002E),
    onErrorContainer: Color(0X14FFFFFF),

    // On colors(text colors)
    onBackground: Color(0XFF0A1445),
    onInverseSurface: Color(0XFFBC002E),
    onPrimary: Color(0XFFEFEFF1),
    onPrimaryContainer: Color(0XFF0A1445),
    onSecondary: Color(0XFF0A1445),
    onSecondaryContainer: Color(0XFFEFEFF1),
    onTertiary: Color(0XFF0A1445),
    onTertiaryContainer: Color(0XFFEFEFF1),

    // Other colors
    outline: Color(0XFFEFEFF1),
    outlineVariant: Color(0X366D9DFF),
    scrim: Color(0X366D9DFF),
    shadow: Color(0XFFEFEFF1),

    // Inverse colors
    inversePrimary: Color(0X366D9DFF),
    inverseSurface: Color(0XFFEFEFF1),

    // Pending colors
    onSurface: Color(0XFF0A1445),
    onSurfaceVariant: Color(0XFFEFEFF1),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => const Color(0XFF0E0E0F);
  Color get black90001 => const Color(0XFF000000);

  // BlueGray
  Color get blueGray200 => const Color(0XFFADADB8);
  Color get blueGray400 => const Color(0XFF888888);
  Color get blueGray500 => const Color(0XFF637393);
  Color get blueGray800 => const Color(0XFF253454);

  // DeepOrangef
  Color get deepOrange4003f => const Color(0X3FFF8036);

  // DeepPurple
  Color get deepPurple600 => const Color(0XFF5C16C5);
  Color get deepPurpleA100 => const Color(0XFFBF94FF);

  // Gray
  Color get gray900 => const Color(0XFF060D31);
  Color get gray90000 => const Color(0X00070E32);
  Color get gray90001 => const Color(0XFF1A2232);
  Color get gray90002 => const Color(0XFF09123F);

  // Indigo
  Color get indigo900 => const Color(0XFF0C1A63);

  // Indigof
  Color get indigo9007f => const Color(0X7F0C1F7F);

  // Red
  Color get redA700 => const Color(0XFFEB0400);
}

PrimaryColors get appTheme => AppThemes().themeColor();
ThemeData get theme => AppThemes().themeData();
