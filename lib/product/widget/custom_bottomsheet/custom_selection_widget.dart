import 'package:architecture_template/product/utility/extension/context_extension.dart';
import 'package:architecture_template/product/widget/custom_bottomsheet/abstract_custom_selection.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/// Custom bottom sheet widget to show user all types of wanted objects in it.
class CustomSelectionBottomSheet<T extends CustomSelection>
    extends StatelessWidget {
  /// Custom bottom sheet constructor.
  const CustomSelectionBottomSheet._({
    required this.selectOptions,
    required this.selectedOpt,
    super.key,
  });

  /// Static method to show bottom sheet with given parameters.
  static Future<T?> show<T extends CustomSelection>(
    BuildContext context, {
    required List<T> selectOptions,
    required T? selectedOpt,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      builder: (context) => CustomSelectionBottomSheet._(
        selectOptions: selectOptions,
        selectedOpt: selectedOpt,
      ),
    );
  }

  /// List of all options wanted to be shown in bottomsheet
  final List<T> selectOptions;

  /// Parameter for selected option.
  final T? selectedOpt;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _Notch(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: selectOptions.length,
          itemBuilder: (BuildContext context, int index) {
            final selection = selectOptions[index];
            return ListTile(
              onTap: () => Navigator.pop(context, selection),
              title: Text(selection.name),
              leading: Icon(
                Icons.check_circle,
                color: selectedOpt == selection
                    ? context.colors.inversePrimary
                    : context.colors.outline,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _Notch extends StatelessWidget {
  const _Notch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 5,
      indent: context.sized.dynamicWidth(0.4),
      endIndent: context.sized.dynamicWidth(0.4),
    );
  }
}
