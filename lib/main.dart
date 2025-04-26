import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:nagwa_task/app.dart';
import 'package:nagwa_task/core/api/dio_helper.dart';
import 'package:nagwa_task/core/injection_container.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initApp();
  // Bloc.observer = AppBlocObserver();
  runApp(const NagwaTaskApp());
}

Future<void> _initApp() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Initialize API interceptors for debugging
  DioHelper.initialize();

  await Future.wait<dynamic>([configureDependencies()]);

  await getIt.get<DatabaseManager>().initHive();
}
