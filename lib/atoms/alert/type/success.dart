part of '../alert.dart';

class AlertSuccess extends StatelessWidget {
  final String titleText;
  final String? bodyText;
  final String buttonText;
  final VoidCallback onPressButton;
  final bool darkButton;
  final bool canClose;
  final String? labelButtonText;
  final VoidCallback? onPressLabelButton;
  final bool verticalButtons;
  final VoidCallback? onPressCloseButton;

  const AlertSuccess({
    Key? key,
    required this.titleText,
    this.bodyText,
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
      icon: 'assets/icons/success.svg',
      bodyText: bodyText ?? '',
      buttonText: buttonText,
      onPressButton: onPressButton,
      titleText: titleText,
      darkButton: darkButton,
      canClose: canClose,
      labelButtonText: labelButtonText,
      onPressLabelButton: onPressLabelButton,
      verticalButtons: verticalButtons,
      onPressCloseButton: onPressCloseButton,
    );
  }
}
