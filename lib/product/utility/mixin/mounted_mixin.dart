import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A mixin that provides mounted state management for stateful widgets.
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  /// Performs a safe operation only if the widget is still mounted.
  void safeOperationVoid(VoidCallback operation) {
    if (!mounted) return;
    operation.call();
  }

  /// Performs a safe asynchronous operation only if the widget is still mounted.
  Future<void> safeOperationFuture(AsyncCallback operation) async {
    if (!mounted) return;
    await operation.call();
  }
}
