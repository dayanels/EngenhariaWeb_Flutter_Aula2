// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aula2/screen/drawer/meu_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home),
            SizedBox(
              width: 16,
            ),
            Text("Home"),
          ],
        ),
      ),
      drawer: MeuDrawer(),
    );
  }
}
