part of '../btn.dart';

class _BtnDangerSecondaryIcon extends DefaultBtnInterface {
  _BtnDangerSecondaryIcon({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required IconData icon,
    required double iconMargin,
    required bool showIconAtRight,
    required bool showShadow,
  }) : super(
          labelColor: labelColor,
          labelFontWeight: labelFontWeight,
          buttonColor: Colors.transparent,
          showIcon: true,
          icon: icon,
          iconMargin: iconMargin,
          showIconAtRight: showIconAtRight,
          showShadow: showShadow,
        );
}

class DefaultBtnDangerSecondaryIcon extends StatelessWidget {
  const DefaultBtnDangerSecondaryIcon({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.sm,
    this.labelColor,
    this.labelFontWeight,
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
      btnType: _BtnDangerSecondaryIcon(
        labelColor: labelColor ?? DefaultDs.colors.tertiaryColor,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
      ),
    );
  }
}
