import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/// Extension on BuildContext to provide commonly used dimension values.
extension ContextExtension on BuildContext {
  /// Low value is 10.0
  double get lowValue => 10;

  /// Mid value is 16.0
  double get midValue => 16;

  /// High value is 32.0
  double get highValue => 32;

  /// Color scheme access modifier
  ColorScheme get colors => general.colorScheme;
}
