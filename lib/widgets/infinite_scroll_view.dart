import 'package:flutter/material.dart';

class InfiniteScrollView extends StatefulWidget {
  const InfiniteScrollView(
      {super.key,
      required this.scrollController,
      required this.onMaxScroll,
      required this.child});

  final Function onMaxScroll;
  final ScrollController scrollController;
  final Widget child;

  @override
  State<InfiniteScrollView> createState() => _InfiniteScrollViewState();
}

class _InfiniteScrollViewState extends State<InfiniteScrollView> {
  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(() {
      if (widget.scrollController.position.maxScrollExtent ==
          widget.scrollController.position.pixels) {
        widget.onMaxScroll();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    widget.scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
