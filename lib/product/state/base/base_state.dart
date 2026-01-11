import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:architecture_template/product/state/container/product_state_items.dart';
import 'package:architecture_template/product/state/viewmodel/product_viewmodel.dart';
import 'package:flutter/widgets.dart';

/// A base state class that provides common functionality for stateful widgets.
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  /// Provides access to the [ProductNetworkManager] instance.
  ProductNetworkManager get networkManager => ProductStateItems.networkManager;

  /// Provides access to the [ProductViewmodel] instance.
  ProductViewmodel get productViewModel => ProductStateItems.productViewModel;
}
