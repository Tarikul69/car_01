import 'package:car_01/widgets/inventory/inventory.dart';
import 'package:flutter/material.dart';

class finance extends StatelessWidget {
  const finance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Financeing & Insurance",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inventory_listing(context),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Financing Options:",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color.fromARGB(
                          255, 127, 126, 126), // Color of the border
                      width: .5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Colors.black,
                          child: Text(
                            "Lone Amount",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              prefixIcon: Icon(Icons.monetization_on),
                              hintText: 'Enter Amount'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Title(
                            color: Colors.black,
                            child: Text(
                              "Interest Rate",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              prefixIcon: Icon(Icons.monetization_on),
                              hintText: 'Enter Interest Rate'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              //prefixIcon: Icon(Icons.monetization_on),
                              hintText: 'Monthly Payment'),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              focusColor: Color.fromARGB(255, 14, 18, 68),
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text("I Agree Loan Term Read Now"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Insurance Options:",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color.fromARGB(
                          255, 127, 126, 126), // Color of the border
                      width: .5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Colors.black,
                          child: Text(
                            "Lone Amount",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              prefixIcon: Icon(Icons.monetization_on),
                              hintText: 'Enter Amount'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Title(
                            color: Colors.black,
                            child: Text(
                              "Interest Rate",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              prefixIcon: Icon(Icons.monetization_on),
                              hintText: 'Enter Interest Rate'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              //prefixIcon: Icon(Icons.monetization_on),
                              hintText: 'Monthly Payment'),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              focusColor: Color.fromARGB(255, 14, 18, 68),
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text("I Agree Loan Term Read Now"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                  backgroundColor: Color.fromARGB(255, 14, 18, 68),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // padding: EdgeInsets.all(0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
