part of '../btn.dart';

class _BtnPrimarySvgIcon extends DefaultBtnInterface {
  _BtnPrimarySvgIcon({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required IconData icon,
    required double iconSize,
    required bool showIconAtRight,
    required bool showShadow,
    Color? iconColor,
  }) : super(
          labelColor: labelColor,
          labelFontWeight: labelFontWeight,
          buttonColor: DefaultDs.colors.primaryColor,
          showIcon: true,
          svgColor: iconColor,
          iconSvg: icon,
          svgSize: iconSize,
          showIconAtRight: showIconAtRight,
          showShadow: showShadow,
          iconIsSvg: true,
        );
}

class DefaultBtnPrimarySvgIcon extends StatelessWidget {
  const DefaultBtnPrimarySvgIcon({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.icon = Icons.favorite,
    this.iconColor,
    this.iconMargin = 3.0,
    this.iconSize = 16,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.borderRadius,
    this.iconIsSvg = true,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final Color? iconColor;
  final FontWeight? labelFontWeight;
  final IconData icon;
  final double iconMargin;
  final double iconSize;
  final bool showIconAtRight;
  final bool showShadow;
  final bool iconIsSvg;

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnPrimarySvgIcon(
        labelColor: labelColor ?? DefaultDs.colors.white,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconColor: iconColor,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
        iconSize: iconSize,
      ),
    );
  }
}
