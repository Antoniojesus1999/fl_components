import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? nombre;

  const CustomCardType2({Key? key, required this.imageUrl, this.nombre})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/a.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (nombre != null)
            Container(
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(nombre ?? 'No tiene titulo'))
        ],
      ),
    );
  }
}
