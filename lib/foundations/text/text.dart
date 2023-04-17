import '../tokens/letter_spacing.dart';
import '../../default_design_system.dart';
import 'package:flutter/material.dart';

class DefaultText {
  DefaultText._();

  ///h1 Text widget - fontSize 96
  static Widget h1({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.h1,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///h2 Text widget - fontSize 58
  static Widget h2({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.h2,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///h3 Text widget - fontSize 47
  static Widget h3({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.h3,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///h4 Text widget - fontSize 33
  static Widget h4({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.h4,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///h5 Text widget - fontSize 23
  static Widget h5({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.h5,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///h6 Text widget - fontSize 19
  static Widget h6({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.h6,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.bold,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///body Text widget - fontSize 16
  static Widget body({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.body,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        decoration: decoration,
      );

  ///title Text widget - fontSize 18
  static Widget title({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.title,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
      );

  ///labelText Text widget - fontSize 14
  static Widget labelText({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.label,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        decoration: decoration,
      );

  ///backofficeLabel Text widget - fontSize 14
  static Widget backofficeLabel({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.label,
        color: color ?? DefaultDs.colors.tertiaryColor,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.bold,
        textAlign: textAlign,
        letterSpacing: LetterSpacing.label,
        textOverflow: textOverflow,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///xSmall Text widget - fontSize 8
  static Widget xSmall({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.xSmall,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        decoration: decoration,
      );

  ///small Text widget - fontSize 12
  static Widget small({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.small,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        decoration: decoration,
      );

  ///small Text widget - fontSize 12
  static Widget fontBold({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: DefaultTypography.body,
        color: color ?? DefaultDs.colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w600,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        decoration: decoration,
      );

  static TextStyle style({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    TextDecoration? decoration,
  }) =>
      TextStyle(
        fontFamily: DefaultTypography.inter,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing,
        decoration: decoration ?? TextDecoration.none,
      );
}

class _TextGeneric extends StatelessWidget {
  const _TextGeneric({
    required this.label,
    required this.fontSize,
    Key? key,
    this.color,
    this.fontStyle,
    this.fontWeight,
    this.textOverflow,
    this.textAlign,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
  }) : super(key: key);

  final String label;
  final double fontSize;
  final TextOverflow? textOverflow;
  final Color? color;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: DefaultText.style(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing,
        decoration: decoration,
      ),
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}

class RichTag {
  /// Options for customize the tags
  ///
  /// Example:
  /// ```dart
  /// RichTag(
  ///   tag: 'zona de tránsito',
  ///   style: Text.style(
  ///     fontWeight: FontWeight.bold,
  ///   ),
  /// )
  /// ```
  RichTag({
    required this.tag,
    required this.style,
    this.onTap,
  });

  /// Name of words that you want to change the style.
  String tag;

  /// Style for the tag.
  final TextStyle style;

  /// onTap function when the words is pressed.
  final void Function()? onTap;
}
