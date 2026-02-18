import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:architecture_template/product/utility/logger/logger_mixin.dart';

/// A custom logger for the project that can be used to log messages with a specific format.
class ProjectCustomLog {
  ProjectCustomLog._privateConstructor();

  /// The singleton instance of [ProjectCustomLog].
  static final ProjectCustomLog instance =
      ProjectCustomLog._privateConstructor();

  /// Logs class name.
  void logClassName<T>(T page) {
    log('[ProjectCustomLog] ${page.runtimeType}');
  }

  /// Logs a page name with the class name.
  void logPageName(PageSpecialType type) {
    log('[ProjectCustomLog] ${type.name.toUpperCase()} PAGE');
  }

  /// Logs custom model.
  void logCustomModel(CustomLogModel model) {
    log('[ProjectCustomLog] CUSTOM MODEL: ${model.toJson()}');
  }
}
