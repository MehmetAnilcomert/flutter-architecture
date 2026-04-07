import 'package:architecture_template/product/widget/custom_bottomsheet/abstract_custom_selection.dart';

/// Concrete modal for product bottomsheet.
final class ProductModal extends CustomSelection {
  /// Concrete modal for product bottomsheet constructor.
  const ProductModal({
    required this.id,
    required this.description,
    required this.price,
  });

  @override
  final String id;

  /// Description of the product.
  final String description;

  /// Price of the product.
  final String price;

  @override
  String get name => '$description - $price';
}
