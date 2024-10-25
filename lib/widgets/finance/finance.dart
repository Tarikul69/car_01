import 'package:car_01/components/card.dart';
import 'package:flutter/material.dart';

class finance extends StatelessWidget {
  const finance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Financeing & Insurance",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            finance_card(context),
          ],
        ),
      ),
    );
  }
}
