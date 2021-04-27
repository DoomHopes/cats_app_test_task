import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cats app'),
        centerTitle: true,
      ),
      body: Center(child: const Text('Bite my shiny metal ass!!!!')),
    );
  }
}
