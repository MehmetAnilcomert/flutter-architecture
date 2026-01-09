part of '../home_view.dart';

class _HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        _Loading(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

@immutable
final class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeState>(
      builder: (context, state) {
        return state.isLoading
            ? const CircularProgressIndicator()
            : const Icon(Icons.home);
      },
    );
  }
}
