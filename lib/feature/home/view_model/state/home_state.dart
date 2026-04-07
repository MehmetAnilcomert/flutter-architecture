import 'package:architecture_template/product/widget/custom_bottomsheet/concrete_modal.dart';
import 'package:equatable/equatable.dart';

/// Represents the state of the Home feature.
class HomeState extends Equatable {
  /// Creates an instance of [HomeState].
  const HomeState({
    this.isLoading = false,
    this.productModel = const ProductModal(id: '', description: '', price: ''),
  });

  /// Indicates whether the Home feature is currently loading.
  final bool isLoading;

  /// The product model associated with the Home feature.
  final ProductModal productModel;

  @override
  List<Object?> get props => [isLoading, productModel];

  /// Creates a copy of the current [HomeState] with optional new values.
  HomeState copyWith({bool? isLoading, ProductModal? productModel}) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      productModel: productModel ?? this.productModel,
    );
  }
}
