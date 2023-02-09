import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.message});
  final String? message;
  final defaultMessage = 'An error occured can\'t load data';

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message ?? defaultMessage));
  }
}
