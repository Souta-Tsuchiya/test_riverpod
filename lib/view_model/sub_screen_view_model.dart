import 'package:riverpod/riverpod.dart';
import 'package:test_riverpod_mvvm/state/sub_screen_state.dart';

final subScreenProvider = StateNotifierProvider<SubScreenViewModel, SubScreenState>(
      (ref) => SubScreenViewModel(),
);

class SubScreenViewModel extends StateNotifier<SubScreenState> {
  SubScreenViewModel() : super(const SubScreenState());

  void addOne() async {
    state = state.copyWith(count: state.count + 1);
  }

  void clear() async {
    state = state.copyWith(count: 0);
  }
}
