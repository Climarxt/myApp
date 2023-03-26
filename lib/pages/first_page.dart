import 'package:flutter/material.dart';
import 'package:myapp/widgets/customcard.dart';

import '../screens/screens.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
                  description: "API ChatGPT",
                  imagePath: "assets/icons/ChatGPT_logo.svg",
                  app: '/app1'),
              CustomCard(
                  title: "API 2",
                  description: "API request - 2",
                  imagePath: "assets/icons/ChatGPT_logo.svg",
                  app: '/app2')
            ],
          )),
    );
  }
}
