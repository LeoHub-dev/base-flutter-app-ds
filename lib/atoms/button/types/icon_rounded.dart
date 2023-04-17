part of '../btn.dart';

/// BtnIconRounded.
///
/// Botón redondeado de color gris con un icono negro, el icono puede ser
/// material o un vector svg
///
/// * En primera instancia el botón intentará usar el vector svg, de ser nula
/// utilizará el icono material, debe si o si enviar uno de los dos
///
///
/// * [onPressed], (opcional) Callback que se llamará al hacer tap sobre el
/// componente.
/// * [margin], (opcional) espaciado customisado por consumidor
/// * [svgIconPath], (opcional) path del vector svg guardado en los assets de
/// la app consumidora
/// * [materialIcon], (opcional) Icono en caso de no tener svg
///
/// Ejemplo
///
/// ```dart
/// @override
/// Widget build(BuildContext context) {
///   return BtnIconRounded(
///	    onPressed: () {},
///	    margin:  EdgeInsets.only(
///		    right: 1,
///	    ),
///	    svgIconPath: 'assets/icon.svg',
///	    materialIcon: null,
///    );
///
/// }
/// ```
/// {@end-tool}
///
///

class _BtnIconRounded extends DefaultBtnInterface {
  _BtnIconRounded({
    required bool iconIsSvg,
    required IconData icon,
    required String svgUrl,
    required bool showShadow,
    required Color iconColor,
    required Color buttonColor,
    required double iconSize,
  }) : super(
          buttonColor: buttonColor,
          labelColor: DefaultDs.colors.primaryColor,
          showShadow: showShadow,
          iconIsSvg: iconIsSvg,
          icon: icon,
          iconMargin: 0,
          svgUrl: svgUrl,
          iconSize: DefaultSpacing.md,
          iconColor: iconColor,
          svgColor: DefaultDs.colors.black,
          btnBorderRadius: 60.0,
          showIcon: true,
        );
}

class DefaultBtnIconRounded extends StatelessWidget {
  const DefaultBtnIconRounded({
    Key? key,
    VoidCallback? onPressed,
    Color? backgroundColor,
    this.margin,
    this.svgIconPath,
    this.materialIcon,
    this.radius,
    this.iconColor,
    this.iconSize,
    this.padding,
    this.showShadow = false,
    this.borderRadius,
  })  : onTap = onPressed,
        buttonColor = backgroundColor,
        super(key: key);

  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final String? svgIconPath;
  final IconData? materialIcon;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final double? radius;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: radius,
      height: radius,
      child: _DefaultBtnGeneric(
        label: '',
        onTap: onTap,
        btnSize: const DefaultBtnSizeInterface(
          paddingH: 0,
          paddingV: 0,
          text: DefaultText.labelText,
        ),
        borderRadius: borderRadius,
        btnType: _BtnIconRounded(
          icon: materialIcon ?? Icons.ac_unit,
          iconIsSvg: svgIconPath != null,
          svgUrl: svgIconPath ?? '',
          iconSize: iconSize ?? DefaultSpacing.md,
          buttonColor: buttonColor ?? DefaultDs.colors.graySecondary,
          iconColor: iconColor ?? DefaultDs.colors.black,
          showShadow: showShadow,
        ),
      ),
    );
  }
}
