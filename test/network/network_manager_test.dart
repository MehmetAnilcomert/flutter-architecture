import 'dart:io';

import 'package:architecture_template/product/init/config/prod_environment.dart';
import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:architecture_template/product/service/manager/service_path.dart';
import 'package:common/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  late final ProductNetworkManager manager;

  setUp(() {
    ProductEnvironment.general();
    manager = ProductNetworkManager.base();
  });

  test('get users items from api', () async {
    final response = await manager.send<User, List<User>>(
      ProductServicePath.posts.value,
      parseModel: const User(),
      method: RequestType.GET,
    );

    expect(response.data, isNotNull);
  });

  test('get users items from api with error handling', () async {
    manager.listenErrorStatus(
      onErrorStatus: (statusCode) {
        if (statusCode == HttpStatus.notFound) {
          // Handle 404 error
          debugPrint('Resource not found');
        }

        expect(statusCode, isNotNull);
      },
    );
    final response = await manager.send<User, List<User>>(
      ProductServicePath.users.value,
      parseModel: const User(),
      method: RequestType.GET,
    );

    expect(response.data, isNotNull);
  });
}
