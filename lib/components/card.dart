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

Widget favourits_card(context, img) {
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
              height: 160,
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: Stack(
                  children: [
                    Image.asset(
                      img,
                      fit: BoxFit.cover,
                      width: MediaQuery.sizeOf(context).width,
                      //height: MediaQuery.sizeOf(context).height,
                    ),
                    Positioned(
                      left: 5,
                      bottom:
                          120, //give the values according to your requirement
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text(
                          "Hyundai",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        "data",
                        textAlign: TextAlign.left,
                      ),
                      Text("data"),
                      Text("data")
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Title(
                        color: Colors.black,
                        child: Text(
                          "Hyundai",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        "data",
                        textAlign: TextAlign.left,
                      ),
                      Text("data"),
                      Container(
                        color: Colors.grey,
                        padding: EdgeInsets.all(4),
                        child: Text("data"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget finance_card(context) {
  return Container(
    child: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 100,
      child: Card(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("data"),
                Spacer(),
                CircleAvatar(),
                Text(
                  "Tarikul Abir",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      )),
    ),
  );
}
