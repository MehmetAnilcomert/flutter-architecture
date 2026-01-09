import 'package:flutter/material.dart';

/// A mixin that provides loading state management for stateful widgets.
mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  /// Indicates whether the loading state is active.
  bool get isLoading => _isLoadingNotifier.value;

  /// A notifier that notifies listeners about loading state changes.
  ValueNotifier<bool> get isLoadingNotifier => _isLoadingNotifier;

  /// The method changes the loading state.
  void changeLoading({bool? isLoading}) {
    _isLoadingNotifier.value = isLoading ?? !_isLoadingNotifier.value;
  }
}
