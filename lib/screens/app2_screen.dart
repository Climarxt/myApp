import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../util/constants.dart';

class App2 extends StatelessWidget {
  const App2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: white,
        iconTheme: const IconThemeData(
          color: black,
        ),
        elevation: 3,
        centerTitle: true,
        title: const Text(
          "API 2",
          style: TextStyle(color: black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [Text('APP2 version 0.1'), Text('25/03/2023')],
        ),
      ),
    );
  }
}
