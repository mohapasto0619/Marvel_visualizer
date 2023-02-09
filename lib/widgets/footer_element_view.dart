import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterElementView extends StatelessWidget {
  const FooterElementView({super.key, required this.title, required this.url});
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.info, color: Color.fromARGB(228, 255, 255, 255)),
            const SizedBox(width: 5),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse(url));
              },
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(219, 255, 255, 255)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
