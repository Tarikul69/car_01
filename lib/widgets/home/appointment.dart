import 'package:car_01/widgets/finance/notification.dart';
import 'package:flutter/material.dart';

class appointment extends StatelessWidget {
  const appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Appointment",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                  color: Colors.black,
                  child: Text("Book Appointment",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18))),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    focusColor: Color.fromARGB(255, 14, 18, 68),
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text("Test Drive",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  SizedBox(width: 15),
                  Checkbox(
                    focusColor: Color.fromARGB(255, 14, 18, 68),
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text("Service",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              Text("Email Address",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Enter Your Name'),
                validator: (String? value) {
                  return;
                  (value != null && value.contains('@'));
                },
              ),
              SizedBox(height: 15),
              Text("Phone", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    hintText: 'Enter Your Phone Number'),
                validator: (String? value) {
                  return;
                  (value != null && value.contains('@'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
