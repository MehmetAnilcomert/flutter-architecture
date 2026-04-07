import 'package:architecture_template/product/widget/custom_bottomsheet/concrete_modal.dart';

/// Factory class to create product modals for the custom bottomsheet.
final class ProductModelFactory {
  /// Factory constructor to create a list of product modals.
  factory ProductModelFactory.items() {
    return const ProductModelFactory._(
      productModals: [
        ProductModal(
          id: '1',
          description: 'Product 1',
          price: r'$10',
        ),
        ProductModal(
          id: '2',
          description: 'Product 2',
          price: r'$20',
        ),
        ProductModal(
          id: '3',
          description: 'Product 3',
          price: r'$30',
        ),
      ],
    );
  }

  const ProductModelFactory._({
    required this.productModals,
  });

  /// List of product modals to be shown in the custom bottomsheet.
  final List<ProductModal> productModals;
}
