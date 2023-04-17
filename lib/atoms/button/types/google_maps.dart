part of '../btn.dart';

class _BtnGoogleMaps extends DefaultBtnInterface {
  _BtnGoogleMaps({required showShadow})
      : super(
          labelColor: DefaultDs.colors.black,
          buttonColor: DefaultDs.colors.white,
          iconIsSvg: true,
          showIcon: true,
          svgUrl: 'assets/icons/google_maps.svg',
          showIconAtRight: false,
          showShadow: showShadow,
          assetPackage: 'mobile_tds',
        );
}

class DefaultBtnGoogleMaps extends StatelessWidget {
  const DefaultBtnGoogleMaps({
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
      btnType: _BtnGoogleMaps(showShadow: showShadow),
    );
  }
}
