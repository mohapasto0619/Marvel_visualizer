import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomBarIndexNotifier extends StateNotifier<int> {
  BottomBarIndexNotifier(super.state);

  void setPosition(int value) {
    state = value;
  }
}
