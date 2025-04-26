import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagwa_task/core/extensions/num_extensions.dart';
import 'package:nagwa_task/core/utils/app_colors.dart';
import 'package:nagwa_task/core/utils/shimmer_loading.dart';
import 'package:nagwa_task/core/utils/sized_x.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';
import 'package:nagwa_task/features/books/presentation/controllers/book_cubit/book_cubit.dart';
import 'package:nagwa_task/generated/l10n.dart';

/// Book card that displays a book's information
class BookCard extends StatelessWidget {
  /// Constructor
  const BookCard({required this.book, super.key});

  /// Dummy book
  static Widget dummy(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.sp),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(13),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Book header with image and info
        Padding(
          padding: EdgeInsets.all(3.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cover image
              ShimmerLoading(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.sp),
                  child:
                      _dummyBook.formats?.imageJpeg != null
                          ? CachedNetworkImage(
                            imageUrl: _dummyBook.formats!.imageJpeg!,
                            width: 25.w,
                            height: 35.w,
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) {
                              return Container(
                                width: 25.w,
                                height: 35.w,
                                color: AppColors.silver.withAlpha(76),
                                child: Icon(
                                  Icons.image_not_supported_outlined,
                                  color: AppColors.silver,
                                  size: 10.w,
                                ),
                              );
                            },
                            placeholder:
                                (context, url) => ShimmerLoading(
                                  child: Container(
                                    width: 25.w,
                                    height: 35.w,
                                    color: AppColors.silver.withAlpha(76),
                                  ),
                                ),
                          )
                          : Container(
                            width: 25.w,
                            height: 35.w,
                            color: AppColors.silver.withAlpha(76),
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              color: AppColors.silver,
                              size: 10.w,
                            ),
                          ),
                ),
              ),
              SizedX.w3,
              // Book info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    ShimmerLoading(
                      child: Text(
                        _dummyBook.title ?? '',
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedX.h1,
                    // Authors
                    ShimmerLoading(
                      child: Text(
                        'by ${_dummyBook.authors?.map((e) => e.name).join(', ') ?? ''}',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Summary section
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerLoading(
                child: Text(
                  'Summary',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.text,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedX.h1,
              ShimmerLoading(
                child: Text(
                  _dummyBook.summaries?.join('\n') ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ShimmerLoading(
                child: TextButton(
                  onPressed: () {
                    context.read<BookCubit>().toggleExpanded();
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.only(top: 0.5.h, bottom: 2.h),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'show less',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_up,
                        size: 16,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  /// The book to display
  final ResultEntity book;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.sp),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(13),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book header with image and info
            Padding(
              padding: EdgeInsets.all(3.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cover image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.sp),
                    child:
                        book.formats?.imageJpeg != null
                            ? CachedNetworkImage(
                              imageUrl: book.formats!.imageJpeg!,
                              width: 25.w,
                              height: 35.w,
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) {
                                return Container(
                                  width: 25.w,
                                  height: 35.w,
                                  color: AppColors.silver.withAlpha(76),
                                  child: Icon(
                                    Icons.image_not_supported_outlined,
                                    color: AppColors.silver,
                                    size: 10.w,
                                  ),
                                );
                              },
                              placeholder:
                                  (context, url) => ShimmerLoading(
                                    child: Container(
                                      width: 25.w,
                                      height: 35.w,
                                      color: AppColors.silver.withAlpha(76),
                                    ),
                                  ),
                            )
                            : Container(
                              width: 25.w,
                              height: 35.w,
                              color: AppColors.silver.withAlpha(76),
                              child: Icon(
                                Icons.image_not_supported_outlined,
                                color: AppColors.silver,
                                size: 10.w,
                              ),
                            ),
                  ),
                  SizedX.w3,
                  // Book info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          book.title ?? '',
                          style: Theme.of(context).textTheme.titleLarge,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedX.h1,
                        // Authors
                        Text(
                          'by ${book.authors?.map((e) => e.name).join(', ') ?? ''}',
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Summary section
            BlocBuilder<BookCubit, BookState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Summary',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          color: AppColors.text,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedX.h1,
                      Text(
                        book.summaries?.join('\n') ?? '',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: state.isExpanded ? null : 3,
                        overflow:
                            state.isExpanded ? null : TextOverflow.ellipsis,
                      ),
                      TextButton(
                        onPressed: () {
                          context.read<BookCubit>().toggleExpanded();
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.only(top: 0.5.h, bottom: 2.h),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              state.isExpanded
                                  ? S.of(context).showLess
                                  : S.of(context).seeMore,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            Icon(
                              state.isExpanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 16,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // dummy data
  static final ResultEntity _dummyBook = ResultEntity(
    title: 'The Great Gatsby',
    authors: [AuthorEntity(name: 'F. Scott Fitzgerald')],
    summaries: ['A novel about the American Dream'],
    formats: FormatsEntity(
      imageJpeg:
          'https://www.gutenberg.org/cache/epub/174/pg174.cover.medium.jpg',
    ),
  );
}
