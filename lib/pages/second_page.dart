import 'package:flutter/material.dart';

import '../widgets/customcard.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
                  title: "API 3",
                  description: "API request - 3",
                  imagePath: "assets/icons/ChatGPT_logo.svg",
                  app: '/app3'),
              CustomCard(
                  title: "API 4",
                  description: "API request - 4",
                  imagePath: "assets/icons/ChatGPT_logo.svg",
                  app: '/app4')
            ],
          )),
    );
  }
}
