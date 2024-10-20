import 'package:flutter/material.dart';

class finance extends StatelessWidget {
  const finance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Finance",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
