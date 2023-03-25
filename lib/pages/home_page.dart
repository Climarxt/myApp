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
                  title: "API 1",
                  description: "Requête vers API 1",
                  imagePath: "assets/icons/ChatGPT_logo.svg",
                  app: App1()),
              CustomCard(
                  title: "API 2",
                  description: "Requête vers API 2",
                  imagePath: "assets/icons/ChatGPT_logo.svg",
                  app: App2())
            ],
          )),
    );
  }
}
