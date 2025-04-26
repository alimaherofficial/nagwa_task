import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagwa_task/core/utils/app_colors.dart';
import 'package:nagwa_task/features/books/presentation/controllers/books_cubit/books_cubit.dart';

/// Search screen for books
class SearchScreen extends StatefulWidget {
  /// Constructor
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;
  bool _canSearch = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(_updateSearchState);

    // Focus on the search field when the screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  void _updateSearchState() {
    final canSearch = _searchController.text.trim().isNotEmpty;
    if (canSearch != _canSearch) {
      setState(() {
        _canSearch = canSearch;
      });
    }
  }

  void _performSearch() {
    if (_canSearch) {
      final query = _searchController.text.trim();
      context.read<BooksCubit>().getBooksFromRemote(search: query);
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _searchController
      ..removeListener(_updateSearchState)
      ..dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        shadowColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.background,
        surfaceTintColor: AppColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Search Books',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              focusNode: _focusNode,
              decoration: InputDecoration(
                hintText: 'Search for books...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon:
                    _searchController.text.isNotEmpty
                        ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                          },
                        )
                        : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: AppColors.primary,
                    width: 2,
                  ),
                ),
              ),
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => _performSearch(),
              maxLength: 50, // Limit search query length
              buildCounter: (
                context, {
                required currentLength,
                required isFocused,
                maxLength,
              }) {
                return Text(
                  '$currentLength/$maxLength',
                  style: TextStyle(
                    color: currentLength > 40 ? Colors.orange : Colors.grey,
                    fontSize: 12,
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    _canSearch ? AppColors.primary : Colors.grey.shade300,
                foregroundColor:
                    _canSearch ? Colors.white : Colors.grey.shade700,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: _canSearch ? _performSearch : null,
              child: const Text('Search'),
            ),
            const SizedBox(height: 24),
            const Text(
              'Search Tips:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('• Try using specific keywords'),
            const Text('• Include author names or book titles'),
            const Text('• Use shorter, more precise terms'),
          ],
        ),
      ),
    );
  }
}
