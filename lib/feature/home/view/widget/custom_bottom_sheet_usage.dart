part of '../home_view.dart';

/// A widget demonstrating the usage of a custom bottom sheet for selection.
/// This widget displays the currently selected product and provides a button to open the bottom sheet for selection.
/// Types of products are defined in [ProductModal] and the selection is managed by [HomeViewModel].
/// Types can be extended by implementing [CustomSelection] interface and using [CustomSelectionBottomSheet] for selection.
class _CustomBottomSheetUsage extends StatelessWidget {
  const _CustomBottomSheetUsage({
    required HomeViewModel homeViewModel,
    super.key,
  }) : _homeViewModel = homeViewModel;

  final HomeViewModel _homeViewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocSelector<HomeViewModel, HomeState, String>(
          selector: (state) => state.productModel.name,
          builder: (context, name) {
            return Text(
              'Selected Product => $name',
              style: context.general.textTheme.bodyMedium,
            );
          },
        ),
        const SizedBox(height: 20),
        FloatingActionButton(
          onPressed: () async {
            await CustomSelectionBottomSheet.show(
              context,
              selectOptions: ProductModelFactory.items().productModals,
              selectedOpt: _homeViewModel.state.productModel,
            ).then((selected) {
              if (selected != null) {
                _homeViewModel.changeProductModel(selected);
              }
            });
          },
          child: const Icon(Icons.open_in_new),
        ),
      ],
    );
  }
}
