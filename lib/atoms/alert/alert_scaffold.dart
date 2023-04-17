import '../../default_design_system.dart';
import 'package:flutter/material.dart';

class AlertScaffold extends StatelessWidget {
  const AlertScaffold({
    Key? key,
    this.header = const SizedBox(),
    this.body = const SizedBox(),
    this.footer = const SizedBox(),
    this.onPressCloseButton,
    this.canClose = false,
    this.isDismissible = true,
  }) : super(key: key);

  final Widget header;
  final Widget body;
  final Widget footer;
  final VoidCallback? onPressCloseButton;
  final bool canClose;
  final bool isDismissible;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => isDismissible,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  if (canClose)
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
                  header,
                ],
              ),
              body,
              footer
            ],
          ),
        ),
      ),
    );
  }
}
