import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_visualiser/router/app_router_names.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view.g.dart';

@Riverpod(keepAlive: false)
class BottomBarIndexNotifier extends _$BottomBarIndexNotifier {
  @override
  int build() => 0;

  void setPosition(int value) {
    state = value;
  }
}

class ScaffoldWihtBottomBar extends ConsumerWidget {
  const ScaffoldWihtBottomBar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(bottomBarIndexNotifierProvider);
    return Scaffold(
        backgroundColor: Colors.red,
        body: child,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(209, 255, 255, 255),
            currentIndex: position,
            onTap: (int newIndex) {
              ref
                  .read(bottomBarIndexNotifierProvider.notifier)
                  .setPosition(newIndex);

              switch (newIndex) {
                case 0:
                  context.goNamed(MarvelVisualizerRoutes.charactersRoute.name);
                  break;
                case 1:
                  context.goNamed(MarvelVisualizerRoutes.comicsRoute.name);
                  break;
                default:
              }
            },
            items: const [
              BottomNavigationBarItem(
                  label: 'Characters', icon: Icon(Icons.tv)),
              BottomNavigationBarItem(
                  label: 'Comics', icon: Icon(Icons.person)),
            ]));
  }
}

class ScaffoldWithoutBottomBar extends StatelessWidget {
  const ScaffoldWithoutBottomBar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: child,
    );
  }
}
