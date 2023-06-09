part of '../btn.dart';

class _BtnSecondaryIcon extends DefaultBtnInterface {
  _BtnSecondaryIcon({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required IconData icon,
    required Color? iconColor,
    required double iconMargin,
    required bool showIconAtRight,
    required bool showShadow,
  }) : super(
          labelColor: labelColor,
          labelFontWeight: labelFontWeight,
          buttonColor: Colors.transparent,
          showIcon: true,
          icon: icon,
          iconColor: iconColor,
          iconMargin: iconMargin,
          showIconAtRight: showIconAtRight,
          showShadow: showShadow,
        );
}

class DefaultBtnSecondaryIcon extends StatelessWidget {
  const DefaultBtnSecondaryIcon({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.iconColor,
    this.icon = Icons.arrow_forward,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.borderRadius,
  }) : super(key: key);
  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final Color? iconColor;
  final FontWeight? labelFontWeight;
  final IconData icon;
  final double iconMargin;
  final bool showIconAtRight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnSecondaryIcon(
        labelColor: labelColor ?? DefaultDs.colors.primaryColor,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconMargin: iconMargin,
        iconColor: iconColor,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
      ),
    );
  }
}
