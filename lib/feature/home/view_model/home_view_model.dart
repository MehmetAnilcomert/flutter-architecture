import 'package:architecture_template/feature/home/view_model/state/home_state.dart';
import 'package:architecture_template/product/state/base/base_cubit.dart';

/// The ViewModel for the Home feature, managing its state.
final class HomeViewModel extends BaseCubit<HomeState> {
  /// Creates an instance of [HomeViewModel] with the initial state.
  HomeViewModel() : super(const HomeState());

  /// Toggles the loading state.
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }
}
