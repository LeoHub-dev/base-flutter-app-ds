part of '../btn.dart';

class _BtnOutline extends DefaultBtnInterface {
  _BtnOutline({
    required Color labelColor,
    required FontWeight? labelFontWeight,
    required Color borderColor,
  }) : super(
          labelColor: labelColor,
          labelFontWeight: labelFontWeight,
          buttonColor: Colors.transparent,
          hasBorder: true,
          borderColor: borderColor,
        );
}

class DefaultBtnOutline extends StatelessWidget {
  const DefaultBtnOutline({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderColor,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnOutline(
        labelColor: labelColor ?? DefaultDs.colors.primaryColor,
        labelFontWeight: labelFontWeight,
        borderColor: borderColor ?? DefaultDs.colors.primaryColor,
      ),
    );
  }
}
