import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/utility/extension/context_extension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

@RoutePage()
class HomeDetailView extends StatelessWidget {
  const HomeDetailView({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: context.general.textTheme.headlineMedium,
            ),
            SizedBox(height: context.highValue),
            Text(
              LocaleKeys.general_save,
              style: TextStyle(
                color: context.general.colorScheme.secondaryFixedDim,
              ),
            ).tr(),
          ],
        ),
      ),
    );
  }
}
