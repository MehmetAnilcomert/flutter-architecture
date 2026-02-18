import 'package:architecture_template/product/utility/logger/project_custom_log.dart';
import 'package:flutter/material.dart';

/// A mixin that provides logging functionality to a [State] class.
mixin LoggerMixin<T extends StatefulWidget> on State<T> {
  /// The special type of the page, which can be used to determine how the page should be displayed.
  PageSpecialType get pageSpecialType;

  /// A custom log model that can be used to log specific information about the page or widget.
  CustomLogModel get customLogModel;

  /// init method to be implemented by the class that uses this mixin, which will be called in the initState method to perform any necessary initialization.
  void init();

  @override
  void initState() {
    super.initState();
    ProjectCustomLog.instance.logClassName(this);
    ProjectCustomLog.instance.logPageName(pageSpecialType);
    ProjectCustomLog.instance.logCustomModel(customLogModel);
    init();
  }
}

/// An enumeration that defines special types of pages in the application.
enum PageSpecialType {
  /// A page that does not have a bottom navigation bar.
  none,

  /// A page that is the home page of the application.
  home,

  /// A page that is used for displaying settings.
  settings,

  /// A page that is used for displaying the user's profile.
  profile,
}

/// A custom model that can be used for logging purposes.
final class CustomLogModel {
  /// Creates a new instance of [CustomLogModel] with the given name and value.
  CustomLogModel(this.name, this.value);

  /// The name of the widget that is being logged.
  final String name;

  /// The value associated with the widget that is being logged.
  final int value;

  @override
  String toString() {
    return 'CustomLogModel{name: $name, value: $value}';
  }

  /// Converts the [CustomLogModel] instance to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
    };
  }
}
