import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagwa_task/app.dart';
import 'package:nagwa_task/core/injection_container.dart';
import 'package:nagwa_task/core/utils/bloc_observer.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initApp();
  Bloc.observer = AppBlocObserver();
  runApp(const NagwaTaskApp());
}

Future<void> _initApp() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Future.wait<dynamic>([configureDependencies()]);

  await getIt.get<DatabaseManager>().initHive();
}
