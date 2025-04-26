import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:nagwa_task/config/routes/app_paths.dart';
import 'package:nagwa_task/core/utils/assets.dart';

/// this class is used to manage the splash view
class SplashScreen extends StatefulWidget {
  /// constructor
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Assets.genIconsSplashLogo)
            .animate(
              onComplete: (controller) async {
                await Future<void>.delayed(
                  const Duration(milliseconds: 1000),
                  () async {
                    if (context.mounted) {
                      context.go(AppPaths.books);
                    }
                  },
                );
              },
            )
            .scale(duration: const Duration(milliseconds: 500))
            .fade(duration: const Duration(milliseconds: 500))
            .move(
              duration: const Duration(milliseconds: 2000),
              curve: Curves.bounceOut,
              begin: const Offset(0, -50),
              end: const Offset(0, 50),
            ),
      ),
    );
  }
}
