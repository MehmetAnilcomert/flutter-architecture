import 'package:architecture_template/product/state/container/product_State_items.dart';
import 'package:architecture_template/product/state/viewmodel/product_viewmodel.dart';
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
        BlocProvider<ProductViewmodel>.value(
          value: ProductStateItems.productViewModel,
        ),
      ],
      child: child,
    );
  }
}
