import 'package:car_01/components/card.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Title(
                  color: Colors.black,
                  child: Text(
                    "My Favourites",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )),
              favourits_card(context),
              favourits_card(context),
              favourits_card(context),
              favourits_card(context),
            ],
          ),
        ),
      ),
    );
  }
}
