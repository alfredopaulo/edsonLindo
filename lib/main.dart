import 'package:edson_app/SobreMim.dart';
import 'package:edson_app/juninhoTags.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const EdsonApp());
}

class EdsonApp extends StatelessWidget {
  const EdsonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/', // Remover o ícone de debug
      routes: {
        '/': (context) => const NavigationBarApp(),
        '/sobre': (context) => const SobreMimPage(),
      },
    );
  }
}
