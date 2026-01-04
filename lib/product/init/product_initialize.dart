import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable
/// A class responsible for initializing product-level configurations before the app starts.
final class ProductInitialize {
  Future<void> startApplication() async {
    await runZoned<Future<void>>(() async {
      await _initialize();
      (error, stack) {
        Logger().e(error);
      };
    });
  }

  /// Initializes necessary configurations for the product.
  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]); // Sets the app to portrait mode only
    await DeviceUtility.instance.initPackageInfo();

    /// Global error handling
    /// Todo: Customize error handling as needed
    FlutterError.onError = (FlutterErrorDetails details) {
      Logger().e(details.exceptionAsString());
      // You can also log the error to an external service here.
    };
    // Add other initialization code here if needed

    // Firebase init here
    // envied here
    // dependency injection here
  }
}
