part of '../btn.dart';

class _BtnTertiaryIcon extends DefaultBtnInterface {
  _BtnTertiaryIcon({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required IconData icon,
    required double iconMargin,
    required bool showIconAtRight,
    required bool showShadow,
    Color? iconColor,
  }) : super(
          labelColor: labelColor,
          labelFontWeight: labelFontWeight,
          buttonColor: DefaultDs.colors.tertiaryColor,
          showIcon: true,
          iconColor: iconColor,
          icon: icon,
          iconMargin: iconMargin,
          showIconAtRight: showIconAtRight,
          showShadow: showShadow,
        );
}

class DefaultBtnTertiaryIcon extends StatelessWidget {
  const DefaultBtnTertiaryIcon({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.icon = Icons.arrow_forward,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.iconColor,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final IconData icon;
  final double iconMargin;
  final bool showIconAtRight;
  final bool showShadow;
  final Color? iconColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnTertiaryIcon(
        labelColor: labelColor ?? DefaultDs.colors.white,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconColor: iconColor,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
      ),
    );
  }
}
