import 'package:flutter/material.dart';

import 'package:social_media_flutter/social_media_flutter.dart';

class SobreMimPage extends StatelessWidget {
  const SobreMimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '⁠Meu nome é Edson Carlos Viana Junior. Solteiro. Tenho 22 anos. Minha casa fica na parte nordeste de Morioh, onde todas as casas estão, e eu não sou casado. Eu trabalho como funcionário das lojas de departamentos Kame Yu e chego em casa todos os dias às oito da noite, no máximo. Eu não fumo, mas ocasionalmente bebo. Estou na cama às 23 horas e me certifico de ter oito horas de sono, não importa o que aconteça. Depois de tomar um copo de leite morno e fazer cerca de vinte minutos de alongamentos antes de ir para a cama, geralmente não tenho problemas para dormir até de manhã. Assim como um bebê, eu acordo sem nenhum cansaço ou estresse pela manhã. Foi-me dito que não houve problemas no meu último check-up. Estou tentando explicar que sou uma pessoa que deseja viver uma vida muito tranquila. Eu cuido para não me incomodar com inimigos, como ganhar e perder, isso me faria perder o sono à noite. É assim que eu lido com a sociedade e sei que é isso que me traz felicidade. Embora, se eu fosse lutar, não perderia para ninguém.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),

              Center(
                child: SocialWidget(
                  placeholderText: 'Edson Viana',
                  iconData: SocialIconsFlutter.instagram,
                  link: 'https://www.instagram.com/edsoonjunior_/',
                  iconColor: const Color.fromARGB(255, 61, 68, 121),
                  placeholderStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              SocialWidget(
                placeholderText: 'Edson Viana',
                iconData: SocialIconsFlutter.github,
                link: 'https://github.com/EdsonJuni0r',
                iconColor: const Color.fromARGB(255, 61, 68, 121),
                placeholderStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),

              //https://github.com/EdsonJuni0r
            ],
          ),
        ),
      ),
    );
  }
}
