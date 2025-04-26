part of 'main_cubit.dart';

/// The state of the main cubit
@freezed
abstract class MainState with _$MainState {
  /// The initial state of the main cubit
  const factory MainState.initial() = MainInitialState;

  /// The state of the main cubit when the locale is getting
  const factory MainState.getLocale() = MainGetLocaleState;

  /// The state of the main cubit when the locale is changing
  const factory MainState.changeLocale() = MainChangeLocaleState;
}
