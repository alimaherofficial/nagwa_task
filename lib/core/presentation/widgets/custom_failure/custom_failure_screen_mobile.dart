import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nagwa_task/core/presentation/widgets/custom_button.dart';
import 'package:nagwa_task/core/presentation/widgets/custom_padding.dart';
import 'package:nagwa_task/core/utils/assets.dart';
import 'package:nagwa_task/core/utils/sized_x.dart';
import 'package:nagwa_task/core/utils/theme_helper.dart';
import 'package:nagwa_task/generated/l10n.dart';

/// this screen is used to show the deposit failure screen for mobile
class CustomFailureScreenMobile extends StatelessWidget {
  /// constructor
  const CustomFailureScreenMobile({
    required this.errorMessage,
    required this.buttonFunction,
    this.canPop = true,
    this.buttonText,
    super.key,
  });

  /// this is the error message
  final String errorMessage;

  /// this is the button text
  final String? buttonText;

  /// this is the button function
  final VoidCallback buttonFunction;

  /// this is the enable back button or not
  /// default is true
  /// if you want to disable the back button
  /// set it to false
  final bool canPop;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: canPop,
        child: CustomPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                errorMessage,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).dividerColor,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),

              // SizedX.h6,
              Container(
                decoration:
                    ThemeHelper.isDarkTheme(context)
                        ? const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        )
                        : null,
                child: Lottie.asset(Assets.genLottieError),
              ),
              SizedX.h6,
              CustomButton(
                onPressed: buttonFunction,
                buttonText: buttonText ?? S.of(context).tryAgain,
                isFilled: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
