import 'package:flutter/material.dart';
import 'package:marvel_visualiser/module/character_details/view.dart';
import 'package:marvel_visualiser/module/characters/view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 82, 82, 1),
        body: const CharactersView(),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(209, 255, 255, 255),
            onTap: (int newIndex) {},
            items: const [
              BottomNavigationBarItem(
                  label: 'Characters', icon: Icon(Icons.tv)),
              BottomNavigationBarItem(
                  label: 'Comics', icon: Icon(Icons.person)),
            ]));
  }
}
