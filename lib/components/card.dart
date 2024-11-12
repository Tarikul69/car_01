import 'package:flutter/material.dart';

//#########################################################
Widget card(img, context) {
  return Container(
    child: SizedBox(
      height: MediaQuery.sizeOf(context).height / 5,
      width: MediaQuery.sizeOf(context).width / 1.5,
      child: Card(
        child: Column(
          children: [
            Image.asset(
              img,
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 9.5,
            ),
            Spacer(),
            ListTile(
              title: Text("Hyundai"),
              subtitle: Text(" CR-V EX"),
              trailing: Column(
                children: [
                  Title(color: Colors.black, child: Text("Year: 2050")),
                  Text("MSRP:\$35000")
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//#########################################################
Widget favourits_card(context, img) {
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

//###############################################################
Widget finance_card(context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      border: Border.all(
        color: Color.fromARGB(255, 127, 126, 126), // Color of the border
        width: .5,
      ),
    ),
    child: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 300,
      child: Card(
        elevation: 0,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  child: Card(
                    color: Color.fromARGB(115, 87, 231, 145),
                    elevation: 0,
                    child: Center(child: Text("Used")),
                  ),
                  height: 40,
                  width: 60,
                ),
                Spacer(),
                CircleAvatar(),
                Text(
                  "Tarikul Abir",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [Text(" Data"), Text("data")],
                ),
                Spacer(),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 6,
                  width: MediaQuery.sizeOf(context).width / 3,
                  child: Image.asset(
                    'assets/toyota.png',
                    fit: BoxFit.fill,
                    width: MediaQuery.sizeOf(context).width / 3,
                    //height: MediaQuery.sizeOf(context).height,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

//#######################################################################
Widget summer_sale(context) {
  return Container(
    color: const Color.fromARGB(255, 207, 192, 192),
    padding: EdgeInsets.all(0),
    child: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 5,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width / 3,
            height: 60,
            color: Color.fromARGB(255, 14, 18, 68),
            child: ListTile(
              title: Text(
                "\$5,000 Off",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "This Summer",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Image.asset(
            'assets/toyota.png',
            fit: BoxFit.fill,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
          )
        ],
      ),
    ),
  );
}

//##################################################
Widget upcoming_appointment(context) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(0),
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).height / 5,
    child: Card(
      child: Image.asset(
        'assets/toyota.png',
        fit: BoxFit.fill,
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
      ),
    ),
  );
}

//####################################################
Widget common_card(context, img, car_type) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(0),
    width: MediaQuery.sizeOf(context).width / 1.5,
    height: MediaQuery.sizeOf(context).height / 3,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Image.asset(
            img,
            fit: BoxFit.fill,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 5,
          ),
        ),
        Center(child: Text(car_type)),
      ],
    ),
  );
}

Widget categories(car_type) {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(),
      child: Card(
        color: Color.fromARGB(255, 148, 151, 156),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            car_type,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
  );
}
