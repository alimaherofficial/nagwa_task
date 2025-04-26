import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nagwa_task/core/base_usecase.dart';
import 'package:nagwa_task/core/utils/database_manager.dart';
import 'package:nagwa_task/features/splash/domain/usecases/change_lang.dart';
import 'package:nagwa_task/features/splash/domain/usecases/get_saved_lang.dart';
import 'package:nagwa_task/generated/l10n.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

/// a cubit to handle the main functionality of the app
class MainCubit extends Cubit<MainState> {
  /// constructor
  MainCubit(this._getSavedLangUseCase, this._changeLangUseCase)
    : super(const MainInitialState());

  final GetSavedLangUseCase _getSavedLangUseCase;
  final ChangeLangUseCase _changeLangUseCase;

  /// the current language code
  Language currentLangCode = Language.en;

  /// gets the saved language
  Future<void> getSavedLang() async {
    final response = await _getSavedLangUseCase.call(NoParameters());
    response.fold((failure) => currentLangCode = Language.en, (value) {
      currentLangCode = value;
      emit(const MainGetLocaleState());
    });
  }

  /// changes the language
  Future<void> changeLang({required Language languageValue}) async {
    final response = await _changeLangUseCase.call(languageValue);
    response.fold(
      (failure) {
        throw Exception(failure.toString());
      },
      (value) {
        currentLangCode = languageValue;
        S.load(Locale(languageValue.name));
        emit(const MainChangeLocaleState());
      },
    );
  }
}
