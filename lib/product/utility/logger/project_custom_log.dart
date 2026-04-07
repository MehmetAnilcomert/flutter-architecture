import 'package:architecture_template/product/utility/logger/logger_mixin.dart';
import 'package:flutter/foundation.dart';

/// A custom logger for the project that can be used to log messages with a specific format.
class ProjectCustomLog {
  ProjectCustomLog._privateConstructor();

  /// The singleton instance of [ProjectCustomLog].
  static final ProjectCustomLog instance =
      ProjectCustomLog._privateConstructor();

  /// Logs class name.
  void logClassName<T>(T page) {
    debugPrint('[ProjectCustomLog] ${page.runtimeType}');
  }

  /// Logs a page name with the class name.
  void logPageName(PageSpecialType type) {
    debugPrint('[ProjectCustomLog] ${type.name.toUpperCase()} PAGE');
  }

  /// Logs custom model.
  void logCustomModel(CustomLogModel model) {
    debugPrint('[ProjectCustomLog] CUSTOM MODEL: ${model.toJson()}');
  }
}
