import 'package:architecture_template/product/init/config/prod_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/state/theme/theme_cubit.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:common/index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

part 'widget/home_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Assets.icons.icLightning.image(
              package: 'common',
              height: 200,
              width: 200,
            ),
            Assets.lottie.animLiveChatbot.lottie(
              package: 'common',
              width: 200,
              height: 200,
            ),
            const Text(LocaleKeys.app_title).tr(args: ['2026']),
            ElevatedButton(
              onPressed: () {
                ProductLocalization.updateLang(
                  context: context,
                  locale: Locales.tr.locale,
                );
              },
              child: const Text('Change Language'),
            ),
            ElevatedButton(
              onPressed: () {
                ProductLocalization.updateLang(
                  context: context,
                  locale: Locales.en.locale,
                );
              },
              child: Text(EnvironmentItems.baseUrl.value),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                textStyle: context.general.textTheme.bodyMedium,
                backgroundColor: context.general.colorScheme.secondary,
              ),
              child: Text(
                EnvironmentItems.apiKey.value,
                style: TextStyle(
                  color: context.general.colorScheme.onSecondary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Theme toggle button
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return ElevatedButton.icon(
                  onPressed: () {
                    context.read<ThemeCubit>().toggleTheme();
                  },
                  icon: Icon(
                    state.themeMode == ThemeMode.dark
                        ? Icons.light_mode
                        : Icons.dark_mode,
                  ),
                  label: const Text('Toggle Theme'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
