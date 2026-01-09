import 'package:equatable/equatable.dart';

/// Represents the state of the Home feature.
class HomeState extends Equatable {
  /// Creates an instance of [HomeState].
  const HomeState({this.isLoading = false});

  /// Indicates whether the Home feature is currently loading.
  final bool isLoading;

  @override
  List<Object?> get props => [isLoading];

  /// Creates a copy of the current [HomeState] with optional new values.
  HomeState copyWith({bool? isLoading}) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
