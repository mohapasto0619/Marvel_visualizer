import 'package:flutter/material.dart';
import 'package:marvel_visualiser/core/utils/debouncer.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key, required this.search, required this.initialValue})
      : super(key: key);
  final Function search;
  final String initialValue;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController textEditingController;
  final _debouncer = Debouncer(milliseconds: 600);
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.initialValue);

    textEditingController.addListener(() {
      _debouncer.run(() {
        widget.search(textEditingController.text);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _debouncer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        style: const TextStyle(color: Colors.red),
        controller: textEditingController,
        decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          filled: true,
          fillColor: Color.fromARGB(209, 255, 255, 255),
          labelText: 'Search...',
          labelStyle: TextStyle(color: Colors.red),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
