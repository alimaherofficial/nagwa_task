import 'package:flutter/material.dart';
import 'package:nagwa_task/core/presentation/widgets/adaptive_layout.dart';
import 'package:nagwa_task/features/books/presentation/pages/books_screen_mobile.dart';

/// this screen is used to display the books
class BooksScreen extends StatelessWidget {
  /// constructor
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const BooksScreenMobile(),
      // we can replace this later with the tablet layout if we want
      tabletLayout: (context) => const BooksScreenMobile(),
      // we can replace this later with the web layout if we want
      webLayout: (context) => const BooksScreenMobile(),
    );
  }
}
