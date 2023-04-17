part of '../btn.dart';

class _BtnDangerSecondary extends DefaultBtnInterface {
  _BtnDangerSecondary({
    required FontWeight? labelFontWeight,
    required Color labelColor,
  }) : super(
          buttonColor: Colors.transparent,
          labelColor: labelColor,
          showShadow: false,
          labelFontWeight: labelFontWeight,
        );
}

class DefaultBtnDangerSecondary extends StatelessWidget {
  const DefaultBtnDangerSecondary({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnDangerSecondary(
        labelColor: labelColor ?? DefaultDs.colors.dangerColor,
        labelFontWeight: labelFontWeight,
      ),
    );
  }
}
