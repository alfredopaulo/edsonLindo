import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Edson Carlos'),
        ),
        body: const Center(
          child: ImageCarousel([
            '../images/edson1.jpg',
            '../images/edson2.jpg',
            '../images/edson3.jpg',
            '../images/edson4.jpg',
            '../images/edson5.jpg',
            // Adicione mais caminhos para outras imagens...
          ]),
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths; // Lista de caminhos para as imagens

  const ImageCarousel(this.imagePaths, {super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 500, // Altura do carrossel
        autoPlay: true, // Ativar reprodução automática
        autoPlayInterval: const Duration(seconds: 2), // Intervalo entre imagens
      ),
      items: imagePaths.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return Image.asset(
              path,
              fit: BoxFit.cover, // Ajustar a imagem ao tamanho do carrossel
            );
          },
        );
      }).toList(),
    );
  }
}
