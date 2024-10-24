import 'package:car_01/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:car_01/components/card.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Welcome Abir!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Texas, USA"),
          trailing: Icon(Icons.message),
        ),
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
                "Featured",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: InkWell(
                child: Text(
                  "View All",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  card("1"),
                  card("name"),
                  card("name"),
                  card("name"),
                  card("1"),
                  card("name"),
                  card("name"),
                  card("name"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
