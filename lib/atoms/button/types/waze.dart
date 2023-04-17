part of '../btn.dart';

class _BtnWaze extends DefaultBtnInterface {
  _BtnWaze({required showShadow})
      : super(
          labelColor: DefaultDs.colors.white,
          buttonColor: const Color(0xff78d0e9),
          iconIsSvg: true,
          showIcon: true,
          svgUrl: 'assets/icons/waze.svg',
          svgSize: 25,
          showIconAtRight: false,
          showShadow: showShadow,
          assetPackage: 'mobile_tds',
        );
}

class DefaultBtnWaze extends StatelessWidget {
  const DefaultBtnWaze({
    Key? key,
    required this.label,
    required this.onTap,
    this.btnSize = DefaultBtnSize.md,
    this.showShadow = true,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _DefaultBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _BtnWaze(showShadow: showShadow),
    );
  }
}
