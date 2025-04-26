import 'package:flutter/material.dart';
import 'package:nagwa_task/core/utils/theme_helper.dart';
import 'package:shimmer/shimmer.dart';

/// this class is used to show shimmer loading
class ShimmerLoading extends StatelessWidget {
  /// constructor
  const ShimmerLoading({required this.child, super.key});

  /// child widget of the shimmer loading
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:
          ThemeHelper.isDarkTheme(context)
              ? Colors.grey.shade800
              : Colors.grey.shade200,
      highlightColor:
          ThemeHelper.isDarkTheme(context)
              ? Colors.grey.shade600
              : Colors.white,
      child: child,
    );
  }
}
