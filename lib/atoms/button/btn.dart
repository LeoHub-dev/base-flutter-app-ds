import '../../default_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'types/primary.dart';
part 'types/primary_icon.dart';
part 'types/primary_icon_svg.dart';
part 'types/secondary.dart';
part 'types/secondary_icon.dart';
part 'types/secondary_icon_svg.dart';
part 'types/tertiary.dart';
part 'types/transparency.dart';
part 'types/tertiary_icon.dart';
part 'types/tertiary_icon_svg.dart';
part 'types/contrast.dart';
part 'types/contrast_icon.dart';
part 'types/contrast_icon_svg.dart';
part 'types/outline.dart';
part 'types/outline_icon.dart';
part 'types/outline_icon_svg.dart';
part 'types/danger.dart';
part 'types/danger_icon.dart';
part 'types/danger_icon_svg.dart';
part 'types/danger_secondary.dart';
part 'types/danger_secondary_icon.dart';
part 'types/danger_secondary_icon_svg.dart';
part 'types/waze.dart';
part 'types/google_maps.dart';
part 'types/radio_button.dart';
part 'types/icon_rounded.dart';
part 'types/primary_svg_icon.dart';
part 'types/white.dart';

class DefaultBtnSizeInterface {
  const DefaultBtnSizeInterface({
    required this.text,
    required this.paddingH,
    required this.paddingV,
  });

  final Widget Function({
    Color? color,
    FontWeight? fontWeight,
    Key? key,
    required String label,
    TextAlign? textAlign,
  }) text;
  final double paddingH;
  final double paddingV;
}

class DefaultBtnSize {
  DefaultBtnSize._();

  static const DefaultBtnSizeInterface xs = DefaultBtnSizeInterface(
    paddingH: 10,
    paddingV: 6,
    text: DefaultText.small,
  );

  static const DefaultBtnSizeInterface sm = DefaultBtnSizeInterface(
    paddingH: 18,
    paddingV: 8,
    text: DefaultText.small,
  );
  static const DefaultBtnSizeInterface sl = DefaultBtnSizeInterface(
    paddingH: 19,
    paddingV: 12,
    text: DefaultText.small,
  );
  static const DefaultBtnSizeInterface md = DefaultBtnSizeInterface(
    paddingH: 20,
    paddingV: 15,
    text: DefaultText.labelText,
  );
  static const DefaultBtnSizeInterface lg = DefaultBtnSizeInterface(
    paddingH: 24,
    paddingV: 15,
    text: DefaultText.body,
  );
  static const DefaultBtnSizeInterface xl = DefaultBtnSizeInterface(
    paddingH: 28,
    paddingV: 20,
    text: DefaultText.h6,
  );
  static const DefaultBtnSizeInterface lgBold = DefaultBtnSizeInterface(
    paddingH: 24,
    paddingV: 15,
    text: DefaultText.fontBold,
  );
  static const DefaultBtnSizeInterface lgLittlePadding =
      DefaultBtnSizeInterface(
    paddingH: 10,
    paddingV: 5,
    text: DefaultText.body,
  );
  static const DefaultBtnSizeInterface lgLittlePaddingBold =
      DefaultBtnSizeInterface(
    paddingH: 10,
    paddingV: 5,
    text: DefaultText.fontBold,
  );
}

class DefaultBtnInterface {
  DefaultBtnInterface({
    required this.buttonColor,
    required this.labelColor,
    this.labelFontWeight,
    this.showIcon = false,
    this.hasBorder = false,
    this.borderColor = Colors.white,
    this.buttonDisabledColor = DefaultColors.chineseSilver,
    this.buttonDisabledColorOpacity = 0.2,
    this.icon = Icons.arrow_forward,
    this.iconColor = Colors.black,
    this.iconSize = 16,
    this.iconIsSvg = false,
    this.svgUrl,
    this.svgSize = 16,
    this.svgColor,
    this.showIconAtRight = true,
    this.showShadow = false,
    this.iconMargin = 8,
    this.assetPackage,
    this.btnSize = DefaultBtnSize.md,
    this.btnBorderRadius = 25.0,
    this.iconSvg,
  });

  Color buttonColor;
  Color labelColor;
  final FontWeight? labelFontWeight;
  final bool showIcon;
  final bool hasBorder;
  final Color borderColor;
  final Color buttonDisabledColor;
  final double buttonDisabledColorOpacity;
  final IconData icon;
  final Color? iconColor;
  final double iconSize;
  final bool iconIsSvg;
  final String? svgUrl;
  final double svgSize;
  final Color? svgColor;
  final bool showIconAtRight;
  final bool showShadow;
  final double iconMargin;
  final String? assetPackage;
  final DefaultBtnSizeInterface btnSize;
  final double btnBorderRadius;
  final IconData? iconSvg;
}

class _DefaultBtnGeneric extends StatelessWidget {
  const _DefaultBtnGeneric({
    Key? key,
    required this.label,
    required this.onTap,
    required this.btnSize,
    required this.btnType,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final GestureTapCallback? onTap;
  final DefaultBtnSizeInterface btnSize;
  final DefaultBtnInterface btnType;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return btnType.buttonDisabledColor
                    .withOpacity(btnType.buttonDisabledColorOpacity);
              }
              return btnType.buttonColor;
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  BorderRadius.circular(btnType.btnBorderRadius),
              side: btnType.hasBorder
                  ? BorderSide(
                      color: btnType.borderColor,
                    )
                  : BorderSide.none,
            ),
          ),
          shadowColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return btnType.buttonColor == Colors.transparent
                    ? Colors.transparent
                    : DefaultDs.colors.disabledColor.withOpacity(0.6);
              }
              return btnType.buttonColor.withOpacity(0.6);
            },
          ),
          elevation: MaterialStateProperty.all(btnType.showShadow ? 8 : 0),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: btnSize.paddingV,
              horizontal: btnSize.paddingH,
            ),
          ),
          foregroundColor: MaterialStateProperty.all(
            btnType.buttonColor.withOpacity(0.6),
          ),
        ),
        onPressed: onTap,
        child: !btnType.showIcon ? _text() : _textIcon(),
      ),
    );
  }

  Widget _text() {
    return btnSize.text(
      label: label,
      color:
          onTap == null ? DefaultDs.colors.disabledColor : btnType.labelColor,
      fontWeight: btnType.labelFontWeight,
    );
  }

  Widget _buildIcon() {
    return !btnType.iconIsSvg
        ? Icon(
            btnType.icon,
            color: btnType.iconColor ?? DefaultDs.colors.black,
            size: btnType.iconSize,
          )
        : SvgPicture.asset(
            btnType.svgUrl ?? '',
            width: btnType.svgSize,
            color: btnType.svgColor,
            package: btnType.assetPackage,
          );
  }

  Widget _textIcon() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        !btnType.showIconAtRight
            ? Flexible(
                child: Container(
                  margin: EdgeInsets.only(right: btnType.iconMargin),
                  child: _buildIcon(),
                ),
              )
            : const SizedBox.shrink(),
        _text(),
        btnType.showIconAtRight
            ? Container(
                margin: EdgeInsets.only(left: btnType.iconMargin),
                child: _buildIcon(),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
