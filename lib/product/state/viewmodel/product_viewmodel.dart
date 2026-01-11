import 'package:architecture_template/product/state/base/base_cubit.dart';
import 'package:architecture_template/product/state/viewmodel/product_State.dart';
import 'package:flutter/material.dart';

/// A ViewModel class for managing product-related state.
final class ProductViewmodel extends BaseCubit<ProductState> {
  /// Creates an instance of [ProductViewmodel] with the given initial state.
  ProductViewmodel() : super(const ProductState());

  /// Changes the theme mode of the application.
  void changeThemeMode({required ThemeMode themeMode}) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
