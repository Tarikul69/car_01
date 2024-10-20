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

Widget favourits_card(context) {
  return Container(
    child: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 3,
      child: Card(
        elevation: 0,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 100,
              child: Card(
                //margin: EdgeInsets.all(5.0),
                child: Image.asset('assets/car1.jpg'),
              ),
            ),
            Text("mycard"),
          ],
        ),
      ),
    ),
  );
}
