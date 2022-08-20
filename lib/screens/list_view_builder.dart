import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController =
      ScrollController(); // obtener la posicion del scroll
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      //print(
      //'${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}'); // obtener la posición del scroll
      //add5();
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    // hacer sperar la aplicación
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(
        seconds:
            3)); // Esperar segundos sin hacer nada Future.delayed(const Duration(seconds: 3)).then((value) => null);
    add5();
    isLoading = false;
    setState(() {});
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // Obtener el ancho del movil

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Stack(
          children: [
            ListView.builder(
              physics:
                  const BouncingScrollPhysics(), //para tener el rebote de lo ultimo del scroll como android
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit
                        .cover, // para que se extienda la imagen por todo el contenedor
                    placeholder: const AssetImage('assets/a.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image?=${imagesIds[index]}'));
              },
            ),
            Positioned(
              child: const _LoadIcon(),
              bottom: 40,
              left: size.width * 0.5 - 30,
            )
          ],
        ),
      ),
    );
  }
}

class _LoadIcon extends StatelessWidget {
  const _LoadIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: const CircularProgressIndicator());
  }
}
