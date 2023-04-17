part of '../btn.dart';

class _BtnOutlineIconSvg extends DefaultBtnInterface {
  _BtnOutlineIconSvg({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required Color borderColor,
    required Color buttonColor,
    required String svgUrl,
    required double iconMargin,
    required bool showIconAtRight,
    required String? assetPackage,
    required Color? svgColor,
    required double svgSize,
  }) : super(
          labelFontWeight: labelFontWeight,
          labelColor: labelColor,
          buttonColor: buttonColor,
          hasBorder: true,
          iconIsSvg: true,
          showIcon: true,
          svgColor: svgColor,
          borderColor: borderColor,
          svgUrl: svgUrl,
          svgSize: svgSize,
          iconMargin: iconMargin,
          showIconAtRight: showIconAtRight,
          assetPackage: assetPackage,
        );
}

class DefaultBtnOutlineIconSvg extends StatelessWidget {
  const DefaultBtnOutlineIconSvg({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderColor,
    required this.svgUrl,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.assetPackage,
    this.svgColor,
    this.svgSize = 16,
    this.borderRadius,
    this.buttonColor = Colors.transparent,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final Color? borderColor;
  final String svgUrl;
  final double iconMargin;
  final bool showIconAtRight;
  final String? assetPackage;
  final Color? svgColor;
  final double svgSize;
  final BorderRadiusGeometry? borderRadius;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnOutlineIconSvg(
        labelColor: labelColor ?? DefaultDs.colors.primaryColor,
        labelFontWeight: labelFontWeight,
        borderColor: borderColor ?? DefaultDs.colors.primaryColor,
        svgUrl: svgUrl,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        assetPackage: assetPackage,
        svgColor: svgColor,
        svgSize: svgSize,
        buttonColor: buttonColor,
      ),
    );
  }
}
