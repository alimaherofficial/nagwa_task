import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagwa_task/core/presentation/widgets/custom_failure/custom_failure_screen.dart';
import 'package:nagwa_task/core/presentation/widgets/custom_padding.dart';
import 'package:nagwa_task/core/utils/app_colors.dart';
import 'package:nagwa_task/core/utils/sized_x.dart';
import 'package:nagwa_task/features/books/presentation/controllers/books_cubit/books_cubit.dart';
import 'package:nagwa_task/features/books/presentation/widgets/book_card.dart';
import 'package:nagwa_task/generated/l10n.dart';

/// this is the mobile layout for the books screen
class BooksScreenMobile extends StatelessWidget {
  /// constructor
  const BooksScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        shadowColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.background,
        surfaceTintColor: AppColors.background,
        title: Text('Books', style: Theme.of(context).textTheme.titleMedium),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SafeArea(
        child: CustomPadding(
          child: BlocConsumer<BooksCubit, BooksState>(
            listenWhen:
                (previous, current) => previous.status != current.status,
            listener: (context, state) {},
            builder: (context, state) {
              final cubit = context.read<BooksCubit>();
              if (cubit.isLoaded) {
                return ListView.separated(
                  controller: state.scrollController,
                  shrinkWrap: true,
                  itemCount: state.books?.results?.length ?? 0,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedX.h2;
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final book = state.books?.results?[index];
                    return Column(
                      children: [
                        BookCard(book: book!),
                        if (state.status == BooksStateStatus.loading &&
                            state.books?.results != null &&
                            state.books!.results!.isNotEmpty &&
                            index == state.books!.results!.length - 1)
                          const CircularProgressIndicator(),
                      ],
                    );
                  },
                );
              } else if (state.status == BooksStateStatus.error) {
                return CustomFailureScreen(
                  errorMessage:
                      state.errorMessage ??
                      S.of(context).oppsThereWasAnErrorPleaseTryAgain,
                  buttonFunction:
                      () => context.read<BooksCubit>().getBooksFromRemote(),
                );
              } else if (state.status == BooksStateStatus.loading) {
                return ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedX.h2;
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return BookCard.dummy(context);
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
