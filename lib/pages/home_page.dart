import 'package:flutter/material.dart';
import 'package:myapp/widgets/customcard.dart';

import '../screens/screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CustomCard(
                  title: "API vers ChatGPTT",
                  description: "Requête vers ChatGPT",
                  imagePath: "assets/icons/ChatGPT_logo.svg",
                  app: ChatGPTApp1())
            ],
          )),
    );
  }
}
