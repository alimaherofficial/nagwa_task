// Generated by Hive CE
// Do not modify
// Check in to version control

import 'package:hive_ce/hive.dart';
import 'package:nagwa_task/core/utils/hive/hive_helper.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(AuthorEntityAdapter());
    registerAdapter(BooksEntityAdapter());
    registerAdapter(FormatsEntityAdapter());
    registerAdapter(ResultEntityAdapter());
  }
}
