import 'package:flutter/material.dart';
import 'package:nagwa_task/core/extensions/num_extensions.dart';
import 'package:nagwa_task/core/utils/app_colors.dart';
import 'package:nagwa_task/core/utils/sized_x.dart';

/// this class is the custom button
class CustomButton extends StatelessWidget {
  /// constructor
  const CustomButton({
    required this.onPressed,
    required this.buttonText,
    required this.isFilled,
    this.hasBorder = true,
    super.key,
    this.fillBackgroundColor,
    this.fillTextColor,
    this.notFillTextColor,
    this.notFillBackgroundColor,
    this.borderColor,
    this.iconWidget,
    this.isThereIcon = false,
    this.height,
    this.borderRadius = 14,
    this.textStyle,
  });

  /// onPressed
  final VoidCallback onPressed;

  /// buttonText
  final String buttonText;

  /// isFilled
  final bool isFilled;

  /// fillBackgroundColor
  final Color? fillBackgroundColor;

  /// notFillBackgroundColor
  final Color? notFillBackgroundColor;

  /// fillTextColor
  final Color? fillTextColor;

  /// notFillTextColor
  final Color? notFillTextColor;

  /// hasBorder
  final bool hasBorder;

  /// borderColor
  final Color? borderColor;

  /// iconWidget
  final Widget? iconWidget;

  /// isThereIcon
  final bool isThereIcon;

  /// height
  final double? height;

  /// borderRadius
  final double borderRadius;

  /// textStyle
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      visualDensity: VisualDensity.adaptivePlatformDensity.copyWith(
        horizontal: VisualDensity.maximumDensity,
      ),
      padding: EdgeInsets.zero,
      height: height ?? 6.h,
      minWidth: double.infinity,
      color:
          isFilled
              ? fillBackgroundColor ?? Theme.of(context).primaryColor
              : notFillBackgroundColor ?? Theme.of(context).disabledColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(
          color:
              hasBorder
                  ? isFilled
                      ? borderColor ?? Colors.transparent
                      : notFillTextColor ?? Theme.of(context).hoverColor
                  : Colors.transparent,
        ),
      ),
      onPressed: isFilled ? onPressed : () {},
      child:
          isThereIcon
              ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconWidget ??
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Theme.of(context).dividerColor,
                        size: 1.5.h,
                      ),
                  SizedX.w2,
                  Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style:
                        textStyle ??
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                          color:
                              isFilled
                                  ? fillTextColor ??
                                      Theme.of(context).primaryColor
                                  : notFillTextColor ??
                                      Theme.of(context).disabledColor,
                        ),
                  ),
                ],
              )
              : Text(
                buttonText,
                textAlign: TextAlign.center,
                style:
                    textStyle ??
                    Theme.of(context).textTheme.titleMedium?.copyWith(
                      color:
                          isFilled
                              ? fillTextColor ?? AppColors.background
                              : notFillTextColor ??
                                  Theme.of(context).disabledColor,
                    ),
              ),
    );
  }
}
