import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widtget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType(),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://capital.es/wp-content/uploads/2022/08/espacio.jpg'),
            SizedBox(height: 20),
            CustomCardType2(
                nombre: 'JEJE',
                imageUrl:
                    'https://www.eluniverso.com/resizer/9OrCxfleZ_PFvdLhBeqpyCu7X1c=/2382x1340/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/BDEDXKSYJNEHTBIR6VZFBKRT3E.jpg')
          ],
        ));
  }
}
