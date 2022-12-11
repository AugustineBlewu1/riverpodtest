import 'package:flutter_riverpod/flutter_riverpod.dart';


final stateNotifierProvider = StateNotifierProvider<StateNotifierPrac, List<String>>((ref) => StateNotifierPrac());


class StateNotifierPrac extends StateNotifier<List<String>>{
  StateNotifierPrac() : super([]);

  void add(String item) {
    state = [...state, item];
  }

  void remove(String item) {
    state = state.where((element) => element != item).toList();
  }

  void clear() {
    state = [];
  }

  void replace(List<String> items) {
    state = items;
  }

}