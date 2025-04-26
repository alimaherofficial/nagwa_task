import 'package:hive_ce/hive.dart';
import 'package:nagwa_task/features/books/domain/entities/books_entity.dart';

part 'hive_helper.g.dart';

@GenerateAdapters([
  AdapterSpec<BooksEntity>(),
  AdapterSpec<ResultEntity>(),
  AdapterSpec<AuthorEntity>(),
  AdapterSpec<FormatsEntity>(),
])
// Annotations must be on some element
// ignore: unused_element
void _() {}
