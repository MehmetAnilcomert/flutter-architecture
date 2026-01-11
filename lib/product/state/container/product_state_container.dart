import 'package:architecture_template/product/cache/product_cache.dart';
import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:architecture_template/product/state/viewmodel/product_viewmodel.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';

/// A container class for managing product state instances.
/// This class utilizes the GetIt package for dependency injection,
final class ProductContainer {
  ProductContainer._();

  /// the service locator for dependency injection.
  static final GetIt _getit = GetIt.I;

  /// Sets up the necessary dependencies for the product state container.
  static void setUp() {
    _getit
      ..registerSingleton(
        ProductNetworkManager.base(),
      )
      ..registerSingleton(ProductCache(cacheManager: HiveCacheManager()))
      ..registerLazySingleton(ProductViewmodel.new);
  }

  /// Reads an instance of type [T] from the service locator then returns it.
  static T read<T extends Object>() => _getit<T>();
}
