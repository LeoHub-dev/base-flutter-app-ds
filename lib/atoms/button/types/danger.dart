part of '../btn.dart';

class _BtnDanger extends DefaultBtnInterface {
  _BtnDanger({
    required FontWeight? labelFontWeight,
    required bool showShadow,
    required Color labelColor,
  }) : super(
          buttonColor: DefaultDs.colors.dangerColor,
          labelColor: labelColor,
          showShadow: showShadow,
          labelFontWeight: labelFontWeight,
        );
}

class DefaultBtnDanger extends StatelessWidget {
  const DefaultBtnDanger({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.showShadow = true,
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
      btnType: _BtnDanger(
        labelColor: labelColor ?? DefaultDs.colors.white,
        labelFontWeight: labelFontWeight,
        showShadow: showShadow,
      ),
    );
  }
}
