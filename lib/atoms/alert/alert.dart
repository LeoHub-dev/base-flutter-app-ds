import '../../default_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'type/error.dart';
part 'type/warning.dart';
part 'type/success.dart';
part 'type/simple.dart';

class _AlertGeneric extends StatelessWidget {
  final String? icon;
  final String titleText;
  final String bodyText;
  final Widget? customBody;
  final String buttonText;
  final VoidCallback onPressButton;
  final bool darkButton;
  final bool canClose;
  final String? labelButtonText;
  final VoidCallback? onPressLabelButton;
  final bool verticalButtons;
  final VoidCallback? onPressCloseButton;
  final Widget? customIcon;

  const _AlertGeneric({
    Key? key,
    this.icon,
    required this.titleText,
    required this.bodyText,
    required this.buttonText,
    required this.onPressButton,
    required this.darkButton,
    required this.canClose,
    required this.verticalButtons,
    this.customBody,
    this.labelButtonText,
    this.onPressLabelButton,
    this.onPressCloseButton,
    this.customIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canClose,
      child: AlertDialog(
        insetPadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(14.0),
          ),
        ),
        content: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.only(bottom: DefaultSpacing.sm),
          decoration: BoxDecoration(
            color: DefaultDs.colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (onPressCloseButton != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: onPressCloseButton,
                        child: Icon(
                          Icons.close_rounded,
                          size: 25,
                          color: DefaultDs.colors.greyishBrown,
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: DefaultSpacing.sm),
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: DefaultSpacing.md,
                    ),
                    child: SvgPicture.asset(
                      icon!,
                      height: 40,
                      width: 40,
                      package: 'mobile_tds',
                    ),
                  ),
                if (customIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: DefaultSpacing.md,
                    ),
                    child: customIcon,
                  ),
                if (titleText.isNotEmpty)
                  DefaultText.h6(
                    label: titleText,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                if (bodyText.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: DefaultSpacing.sm,
                      vertical: (bodyText.isNotEmpty && titleText.isNotEmpty)
                          ? DefaultSpacing.lg
                          : DefaultSpacing.xs,
                    ),
                    child: DefaultText.labelText(
                      label: bodyText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                if (customBody != null) customBody!,
                DefaultVerticalSpace.md,
                if (verticalButtons)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (darkButton)
                        DefaultBtnTertiary(
                          label: buttonText,
                          labelFontWeight: FontWeight.w600,
                          btnSize: DefaultBtnSize.lg,
                          onTap: onPressButton,
                        )
                      else
                        DefaultBtnPrimary(
                          label: buttonText,
                          labelFontWeight: FontWeight.w600,
                          btnSize: DefaultBtnSize.lg,
                          onTap: onPressButton,
                        ),
                      if (labelButtonText != null)
                        Flexible(
                          child: DefaultBtnSecondary(
                            label: labelButtonText!,
                            onTap: onPressLabelButton,
                            btnSize: DefaultBtnSize.lg,
                            labelColor: darkButton
                                ? DefaultDs.colors.tertiaryColor
                                : DefaultDs.colors.primaryColor,
                            labelFontWeight: FontWeight.w600,
                            showShadow: false,
                          ),
                        ),
                    ],
                  )
                else
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (labelButtonText != null)
                        Flexible(
                          child: DefaultBtnSecondary(
                            label: labelButtonText!,
                            onTap: onPressLabelButton,
                            btnSize: DefaultBtnSize.lg,
                            labelColor: darkButton
                                ? DefaultDs.colors.tertiaryColor
                                : DefaultDs.colors.primaryColor,
                            labelFontWeight: FontWeight.w600,
                            showShadow: false,
                          ),
                        ),
                      if (darkButton)
                        DefaultBtnTertiary(
                          label: buttonText,
                          labelFontWeight: FontWeight.w600,
                          btnSize: DefaultBtnSize.lg,
                          onTap: onPressButton,
                        )
                      else
                        DefaultBtnPrimary(
                          label: buttonText,
                          labelFontWeight: FontWeight.w600,
                          btnSize: DefaultBtnSize.lg,
                          onTap: onPressButton,
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum AlertType { success, error, warning, simple, custom }

class Alert {
  static void show({
    required BuildContext context,
    Color? barrierColor,
    bool barrierDismissible = false,
    AlertType alertType = AlertType.success,
    required String title,
    String? body,
    Widget? customBody,
    required String buttonText,
    required VoidCallback onPressButton,
    String? labelButtonText,
    VoidCallback? onPressLabelButton,
    bool darkButton = false,
    bool canClose = true,
    bool verticalButtons = false,
    VoidCallback? onPressCloseButton,
    Widget? customIcon,
  }) {
    Widget alert = AlertSuccess(
      titleText: title,
      bodyText: body,
      buttonText: buttonText,
      onPressButton: onPressButton,
      darkButton: darkButton,
      canClose: canClose,
      labelButtonText: labelButtonText,
      onPressLabelButton: onPressLabelButton,
      verticalButtons: verticalButtons,
      onPressCloseButton: onPressCloseButton,
    );
    switch (alertType) {
      case AlertType.error:
        alert = AlertError(
          titleText: title,
          bodyText: body,
          customBody: customBody,
          buttonText: buttonText,
          onPressButton: onPressButton,
          darkButton: darkButton,
          canClose: canClose,
          labelButtonText: labelButtonText,
          onPressLabelButton: onPressLabelButton,
          verticalButtons: verticalButtons,
          onPressCloseButton: onPressCloseButton,
        );
        break;
      case AlertType.warning:
        alert = AlertWarning(
          titleText: title,
          bodyText: body,
          customBody: customBody,
          buttonText: buttonText,
          onPressButton: onPressButton,
          darkButton: darkButton,
          canClose: canClose,
          labelButtonText: labelButtonText,
          onPressLabelButton: onPressLabelButton,
          verticalButtons: verticalButtons,
          onPressCloseButton: onPressCloseButton,
        );
        break;
      case AlertType.simple:
        alert = AlertSimple(
          titleText: title,
          bodyText: body,
          customBody: customBody,
          buttonText: buttonText,
          onPressButton: onPressButton,
          darkButton: darkButton,
          canClose: canClose,
          labelButtonText: labelButtonText,
          onPressLabelButton: onPressLabelButton,
          verticalButtons: verticalButtons,
          onPressCloseButton: onPressCloseButton,
        );
        break;
      case AlertType.custom:
        alert = _AlertGeneric(
          bodyText: body ?? '',
          buttonText: buttonText,
          onPressButton: onPressButton,
          titleText: title,
          darkButton: darkButton,
          canClose: canClose,
          labelButtonText: labelButtonText,
          onPressLabelButton: onPressLabelButton,
          verticalButtons: verticalButtons,
          onPressCloseButton: onPressCloseButton,
          customIcon: customIcon,
        );
        break;
      default:
    }
    showDialog(
      context: context,
      barrierColor: barrierColor ?? DefaultDs.colors.black.withOpacity(0.8),
      barrierDismissible: barrierDismissible,
      builder: (context) => alert,
    );
  }
}
