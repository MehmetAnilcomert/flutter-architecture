import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/init/product_initialize.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/init/theme/dark_theme/custom_dark_theme.dart';
import 'package:architecture_template/product/init/theme/light_theme/custom_light_theme.dart';
import 'package:architecture_template/product/state/theme/theme_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await ProductInitialize().startApplication();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: CustomLightTheme().themeData,
            darkTheme: CustomDarkTheme().themeData,
            themeMode: state.themeMode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
