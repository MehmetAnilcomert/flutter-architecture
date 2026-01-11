import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  /// Network manager for home view
  late final ProductNetworkManager networkManager;
  late final ProductNetworkErrorManager networkErrorManager;

  // Home view widget lifecycle methods
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    networkManager = ProductNetworkManager.base();
    networkErrorManager = ProductNetworkErrorManager(context: context);

    networkManager.listenErrorStatus(
      onErrorStatus: (statusCode) {
        networkErrorManager.handleError(statusCode);
      },
    );
  }
}
