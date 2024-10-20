import 'package:flutter/material.dart';

class favourits extends StatelessWidget {
  const favourits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favourites",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
