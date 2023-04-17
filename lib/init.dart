import 'foundations/foundations.dart';

class DefaultDs {
  const DefaultDs._();

  static DefaultColorsInterface colors = const DefaultColorsInterface();
  static DefaultTypographyInterface typography =
      const DefaultTypographyInterface();

  static void init({
    required DefaultColorsInterface colors,
    required DefaultTypographyInterface typography,
  }) {
    colors = colors;
    typography = typography;
  }
}
