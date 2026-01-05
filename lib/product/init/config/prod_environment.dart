import 'package:common/index.dart';
import 'package:flutter/foundation.dart';

/// Application environment manager class.
final class ProductEnvironment {
  /// Sets up the product configuration for the current environment.
  ProductEnvironment.setup(ProductConfiguration configuration) {
    _configuration = configuration;
  }

  ProductEnvironment.general() {
    _configuration = kDebugMode ? DevEnv() : ProdEnv();
  }

  /// Gets the product configuration for the current environment.
  static late final ProductConfiguration _configuration;
}

/// Enum for accessing environment configuration items.
enum EnvironmentItems {
  /// The base URL for API requests.
  baseUrl,

  /// The API key for accessing services.
  apiKey;

  /// Gets the value of the environment item.
  String get value {
    switch (this) {
      case EnvironmentItems.baseUrl:
        return ProductEnvironment._configuration.baseUrl;
      case EnvironmentItems.apiKey:
        return ProductEnvironment._configuration.apiKey;
    }
  }
}
