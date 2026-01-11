import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/service/manager/login_service.dart';
import 'package:architecture_template/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template/product/state/container/product_state_items.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  /// Network manager for home view
  late final ProductNetworkErrorManager networkErrorManager;
  late final LoginService loginService;

  // Home view widget lifecycle methods
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginService = LoginService(
      networkManager: ProductStateItems.networkManager,
    );
    networkErrorManager = ProductNetworkErrorManager(context: context);

    ProductStateItems.networkManager.listenErrorStatus(
      onErrorStatus: (statusCode) {
        networkErrorManager.handleError(statusCode);
      },
    );
  }
}
