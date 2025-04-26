import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagwa_task/features/books/presentation/controllers/books_cubit/books_cubit.dart';

/// this is the search banner
Widget searchBanner(BooksState state, BuildContext context) {
  return state.currentSearchQuery != null &&
          state.currentSearchQuery!.isNotEmpty
      ? Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Search results for: "${state.currentSearchQuery}"',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                // Clear search and reload all books
                context.read<BooksCubit>().clearSearch();
              },
            ),
          ],
        ),
      )
      : const SizedBox.shrink();
}
