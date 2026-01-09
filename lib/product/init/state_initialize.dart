import 'package:architecture_template/product/state/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A widget that initializes bloc state management for the application.
class StateInitialize extends StatelessWidget {
  /// Creates an instance of [StateInitialize] with the given [child].
  const StateInitialize({
    required this.child,
    super.key,
  });

  /// The child widget to be wrapped with state management providers.
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
      ],
      child: child,
    );
  }
}
