import 'package:equatable/equatable.dart';

/// Custom bottomsheet`s abstract modal.
abstract class CustomSelection extends Equatable {
  /// Custom bottomsheet`s abstract modal constructor.
  const CustomSelection();

  /// Id of the selected option.
  String get id;

  /// Name of the selected option.
  String get name;

  @override
  List<Object> get props => [id, name];
}
