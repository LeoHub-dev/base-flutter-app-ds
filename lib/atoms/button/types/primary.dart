part of '../btn.dart';

class _BtnPrimary extends DefaultBtnInterface {
  _BtnPrimary({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required bool showShadow,
  }) : super(
          buttonColor: DefaultDs.colors.primaryColor,
          labelColor: labelColor,
          showShadow: showShadow,
          labelFontWeight: labelFontWeight,
        );
}

class DefaultBtnPrimary extends StatelessWidget {
  const DefaultBtnPrimary({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnPrimary(
        labelColor: labelColor ?? DefaultDs.colors.white,
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
      ),
    );
  }
}
