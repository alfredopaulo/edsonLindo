import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
