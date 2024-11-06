import 'package:flutter/material.dart';

class save_items extends StatelessWidget {
  const save_items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Save Cars", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              save_items_card(context, 'assets/toyota.png'),
              save_items_card(context, 'assets/toyota.png'),
              save_items_card(context, 'assets/toyota.png'),
              save_items_card(context, 'assets/toyota.png'),
              save_items_card(context, 'assets/toyota.png'),
            ],
          ),
        ),
      ),
    );
  }
}

//Card
Widget save_items_card(context, img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Color.fromARGB(255, 151, 150, 150), // Color of the border
          width: .5,
        ),
      ),
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
                        child: Icon(Icons.save_sharp, color: Colors.black),
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
                          color: Color.fromARGB(255, 172, 197, 255),
                          padding: EdgeInsets.all(4),
                          child: Text(
                            "Used",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
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
    ),
  );
}
