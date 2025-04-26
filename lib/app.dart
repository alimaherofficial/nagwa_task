import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nagwa_task/config/routes/app_router.dart';
import 'package:nagwa_task/config/themes/app_theme.dart';
import 'package:nagwa_task/core/presentation/widgets/no_glow.dart';
import 'package:nagwa_task/core/utils/app_strings.dart';
import 'package:nagwa_task/core/utils/app_values.dart';
import 'package:nagwa_task/core/utils/multi_bloc_manager.dart';
import 'package:nagwa_task/core/utils/size_helper.dart';
import 'package:nagwa_task/features/splash/presentation/cubit/main/main_cubit.dart';
import 'package:nagwa_task/generated/l10n.dart';

/// Main App Widget
class NagwaTaskApp extends StatelessWidget {
  /// Constructor
  const NagwaTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: MultiBlocManager.multiBlocProviderList,
      child: MultiBlocListener(
        listeners: MultiBlocManager.multiBlocListenersList,
        child: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                SizeHelper.constraints = constraints;
                return NoGlowScroll(
                  child: MaterialApp.router(
                    title: AppStrings.appName,
                    locale: Locale(
                      context.read<MainCubit>().currentLangCode.name,
                    ),
                    debugShowCheckedModeBanner: AppValues.isTest,
                    theme: AppTheme.theme(
                      lang: context.read<MainCubit>().currentLangCode.name,
                    ),
                    themeMode: ThemeMode.light,
                    supportedLocales: S.delegate.supportedLocales,
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    routerConfig: AppRouter.router,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
