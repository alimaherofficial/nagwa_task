import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nagwa_task/core/injection_container.config.dart';

/// this class is used to manage the dependency injection
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
/// this method is used to initialize the dependency injection
Future<void> configureDependencies() async => getIt.init();
