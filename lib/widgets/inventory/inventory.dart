import 'package:flutter/material.dart';

class inventory extends StatelessWidget {
  const inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Inventory",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
