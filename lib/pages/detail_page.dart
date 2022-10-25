import 'package:flutter/material.dart';
import 'package:marvel_app/api_utils/classes/hero_marvel.dart';

import '../widgets/text_widget.dart';

class DetailPage extends StatelessWidget {
  final HeroMarvel hero;
  const DetailPage({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        foregroundColor: const Color.fromRGBO(0, 0, 0, 0),
        shadowColor: const Color.fromRGBO(0, 0, 0, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Hero(
        tag: hero.name,
        child: Stack(children: [
          Image(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            image: ExactAssetImage(hero.path),
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: TextApp(text: '${hero.name}\n${hero.info}'),
          )
        ]),
      ),
    );
  }
}