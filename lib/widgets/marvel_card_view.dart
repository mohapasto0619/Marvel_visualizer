import 'package:flutter/material.dart';

class MarvelCardView extends StatelessWidget {
  const MarvelCardView(
      {Key? key, required this.title, required this.image, required this.onTap})
      : super(key: key);
  final String title;
  final String image;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    const unkownImage =
        'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg';
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            (image != unkownImage)
                ? Image.network(
                    image,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    image,
                    fit: BoxFit.none,
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                //clipBehavior: Clip.none,
                color: Colors.black38,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title ?? 'Unkown',
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
