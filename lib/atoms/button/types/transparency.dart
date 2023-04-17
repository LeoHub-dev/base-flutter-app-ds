part of '../btn.dart';

class _BtnTransparent extends DefaultBtnInterface {
  _BtnTransparent({
    required FontWeight? labelFontWeight,
    required bool showShadow,
    required Color labelColor,
  }) : super(
          buttonColor: DefaultDs.colors.white.withOpacity(0.3),
          labelColor: labelColor,
          showShadow: showShadow,
          labelFontWeight: labelFontWeight,
        );
}

class DefaultBtnTransparent extends StatelessWidget {
  const DefaultBtnTransparent({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
    this.labelColor,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnTransparent(
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
        labelColor: labelColor ?? DefaultDs.colors.primaryColor,
      ),
    );
  }
}
