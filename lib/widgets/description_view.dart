import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color.fromARGB(209, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Description ',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(
              height: 10,
            ),
            (description.isNotEmpty)
                ? Text(
                    description,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  )
                : const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('No description available'),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
