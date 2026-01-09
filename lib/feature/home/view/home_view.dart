import 'package:architecture_template/feature/home/view_model/home_view_model.dart';
import 'package:architecture_template/feature/home/view_model/state/home_state.dart';
import 'package:architecture_template/product/init/config/prod_environment.dart';
import 'package:architecture_template/product/navigation/app_router.gr.dart';
import 'package:architecture_template/product/state/theme/theme_cubit.dart';
import 'package:architecture_template/product/utility/padding/product_padding.dart';
import 'package:architecture_template/product/widget/product_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

part 'widget/home_appbar.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewModel _homeViewModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _homeViewModel = HomeViewModel(),
      child: Scaffold(
        appBar: const _HomeAppbar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const LottieCachedNetworkImage(
                imageUrl: 'https://picsum.photos/id/237/200/300',
              ),
              Padding(
                padding:
                    const ProductPadding.symmetricVerticalSmall(), // Projenin özel padding sınıfı kullanıldı
                child: ElevatedButton(
                  onPressed: () {
                    _homeViewModel.changeLoading();
                  },
                  child: Text(EnvironmentItems.baseUrl.value),
                ),
              ),
              Padding(
                padding:
                    const ProductPadding.onlyLeftNormal() +
                    const EdgeInsets.only(
                      left: 16,
                    ), // Farklı paddinglerin kombinasyonu kullanıldı
                child: ElevatedButton(
                  onPressed: () async {
                    await context.pushRoute(
                      HomeDetailRoute(title: 'Home Detail Page'),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: context.general.textTheme.bodyMedium,
                    backgroundColor: context.general.colorScheme.secondary,
                  ),
                  child: Text(
                    'Go to Home Detail',
                    style: TextStyle(
                      color: context.general.colorScheme.onSecondary,
                    ),
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
      ),
    );
  }
}
