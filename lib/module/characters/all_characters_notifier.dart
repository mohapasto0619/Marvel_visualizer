import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/character/result.dart';

class AllCharactersNotifier extends StateNotifier<List<Result>> {
  AllCharactersNotifier(super.state);

  void setCharacters(List<Result> value) {
    state = value;
  }

  void addCharacters(List<Result> value) {
    state.addAll(value);
  }

  void clearChracters() {
    state.clear();
  }
}
