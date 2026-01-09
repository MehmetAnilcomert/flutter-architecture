import 'package:architecture_template/product/init/product_initialize.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/init/state_initialize.dart';
import 'package:architecture_template/product/init/theme/dark_theme/custom_dark_theme.dart';
import 'package:architecture_template/product/init/theme/light_theme/custom_light_theme.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/state/theme/theme_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await ProductInitialize().startApplication();
  runApp(
    ProductLocalization(child: StateInitialize(child: ArchitectureMain())),
  );
}

/// The main application widget that sets up architecture project.
class ArchitectureMain extends StatelessWidget {
  /// Creates an instance of [ArchitectureMain].
  ArchitectureMain({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: context.watch<ThemeCubit>().state.themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
