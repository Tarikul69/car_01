import 'package:flutter/material.dart';

Widget card(name) {
  return Container(
    child: SizedBox(
      height: 100,
      width: 85,
      child: Card(
        child: Text(name),
      ),
    ),
  );
}

Widget mycard() {
  return Container(
    child: Text("mycard"),
  );
}
