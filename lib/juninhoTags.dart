import 'package:edson_app/ImageCarousel.dart';
import 'package:edson_app/SobreMim.dart';
import 'package:flutter/material.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edson Viana'),
        backgroundColor: const Color.fromARGB(255, 61, 68, 121),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(255, 61, 68, 121),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Sobre mim',
          ),
        ],
      ),
      body: <Widget>[
        const Center(
          child: ImageCarousel([
            'images/edson1.jpg',
            'images/edson2.jpg',
            // 'images/edson3.jpg',
            // 'images/edson4.jpg',
            // 'images/edson5.jpg',
            // 'images/edson6.jpg',
            // 'images/edson7.jpg',
            // 'images/edson8.jpg',
            // Adicione mais caminhos para outras imagens...
          ]),
        ),
        const SobreMimPage()
      ][currentPageIndex],
    );
  }
}
