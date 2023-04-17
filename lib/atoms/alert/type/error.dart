part of '../alert.dart';

class AlertError extends StatelessWidget {
  final String titleText;
  final String? bodyText;
  final Widget? customBody;
  final String buttonText;
  final VoidCallback onPressButton;
  final bool darkButton;
  final bool canClose;
  final String? labelButtonText;
  final VoidCallback? onPressLabelButton;
  final bool verticalButtons;
  final VoidCallback? onPressCloseButton;

  const AlertError({
    Key? key,
    required this.titleText,
    required this.bodyText,
    this.customBody,
    required this.buttonText,
    required this.onPressButton,
    required this.darkButton,
    required this.canClose,
    this.labelButtonText,
    this.onPressLabelButton,
    required this.verticalButtons,
    this.onPressCloseButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _AlertGeneric(
      icon: 'assets/icons/error.svg',
      bodyText: bodyText ?? '',
      buttonText: buttonText,
      onPressButton: onPressButton,
      titleText: titleText,
      customBody: customBody,
      darkButton: darkButton,
      canClose: canClose,
      labelButtonText: labelButtonText,
      onPressLabelButton: onPressLabelButton,
      verticalButtons: verticalButtons,
      onPressCloseButton: onPressCloseButton,
    );
  }
}
