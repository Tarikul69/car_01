import 'package:flutter/material.dart';

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
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            TextField(
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
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "Current Inventory",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              trailing: InkWell(
                child: Text(
                  "View All",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
