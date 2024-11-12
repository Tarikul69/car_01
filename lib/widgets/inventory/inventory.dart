import 'package:car_01/widgets/finance/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inventory extends StatelessWidget {
  const inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Inventory Listing",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
                onTap: () {
                  Get.to(notification());
                },
                child: Icon(Icons.notifications)),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 14, 18, 68),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search by Make, Model, Year'),
                ),
              ),
              SizedBox(height: 8),
              ListTile(
                title: Text(
                  "Current Inventory",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  ),
                ),
              ),
              inventory_listing(context),
              inventory_listing(context),
              inventory_listing(context),
              inventory_listing(context),
            ],
          ),
        ),
      ),
    );
  }
}

//Inventory Listing Card
Widget inventory_listing(context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      height: MediaQuery.sizeOf(context).height / 3.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Color.fromARGB(255, 127, 126, 126), // Color of the border
          width: .5,
        ),
      ),
      padding: EdgeInsets.all(10),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height / 3,
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  color: Color.fromARGB(255, 131, 164, 221),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "New",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/man.jpg'),
                ),
                Title(
                  color: Colors.black,
                  child: Text(
                    " Tarikul Abir",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Hyundai",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text(
                        "Accord EX",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black38, fontSize: 17),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/toyota_01.png',
                    width: MediaQuery.sizeOf(context).width / 1.8,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text(
                    "MSRP \$31005",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Color: River Blue",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Year:2024",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Text(
              "The Caprara family first opened our dealership doors 45 years ago and has proudly been a presence in Jefferson County, St....",
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    ),
  );
}
