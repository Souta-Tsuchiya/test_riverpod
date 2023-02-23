import 'package:riverpod/riverpod.dart';
import 'package:test_riverpod_mvvm/state/home_screen_state.dart';


final homeScreenProvider = StateNotifierProvider<HomeScreenViewModel, HomeScreenState>(
      (ref) => HomeScreenViewModel(),
);

class HomeScreenViewModel extends StateNotifier<HomeScreenState> {
  HomeScreenViewModel() : super(const HomeScreenState());

  void addOne() async {
    state = state.copyWith(count: state.count + 1);
  }

  void clear() async {
    state = state.copyWith(count: 0);
  }
}
