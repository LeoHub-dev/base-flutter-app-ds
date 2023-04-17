part of '../btn.dart';

class _BtnSecondaryIconSvg extends DefaultBtnInterface {
  _BtnSecondaryIconSvg({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required String svgUrl,
    required double iconMargin,
    required bool showIconAtRight,
    required String? assetPackage,
    required Color? svgColor,
    required double svgSize,
  }) : super(
          labelColor: labelColor,
          labelFontWeight: labelFontWeight,
          buttonColor: Colors.transparent,
          iconIsSvg: true,
          showIcon: true,
          svgColor: svgColor,
          svgUrl: svgUrl,
          svgSize: svgSize,
          iconMargin: iconMargin,
          showIconAtRight: showIconAtRight,
          assetPackage: assetPackage,
        );
}

class DefaultBtnSecondaryIconSvg extends StatelessWidget {
  const DefaultBtnSecondaryIconSvg({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    required this.svgUrl,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.assetPackage,
    this.svgColor,
    this.svgSize = 16,
    this.borderRadius,
    this.transparentColorDisabledButton = false,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final String svgUrl;
  final double iconMargin;
  final bool showIconAtRight;
  final String? assetPackage;
  final Color? svgColor;
  final double svgSize;
  final BorderRadiusGeometry? borderRadius;
  final bool transparentColorDisabledButton;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnSecondaryIconSvg(
        labelColor: labelColor ?? DefaultDs.colors.primaryColor,
        labelFontWeight: labelFontWeight,
        svgUrl: svgUrl,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        assetPackage: assetPackage,
        svgColor: svgColor,
        svgSize: svgSize,
      ),
    );
  }
}
