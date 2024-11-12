import 'package:flutter/material.dart';

class edit_profile extends StatelessWidget {
  const edit_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: CircleAvatar(
                backgroundImage: AssetImage('assets/man.jpg'),
                radius: 80,
              )),
              Title(
                color: Colors.black,
                child: Text(
                  "Name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Enter Your Name'),
              ),
              SizedBox(
                height: 10,
              ),
              Title(
                color: Colors.black,
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Enter Email Address'),
              ),
              SizedBox(
                height: 10,
              ),
              Title(
                color: Colors.black,
                child: Text(
                  "Phone",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    prefixIcon: Icon(Icons.phone),
                    hintText: 'Enter Phone Number'),
              ),
              SizedBox(
                height: 10,
              ),
              Title(
                color: Colors.black,
                child: Text(
                  "Lone Amount",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    prefixIcon: Icon(Icons.phone),
                    hintText: 'Enter Amount'),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(178, 60),
                            backgroundColor: Color.fromARGB(255, 14, 18, 68),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: EdgeInsets.all(16)),
                        child: Text("Cancel",
                            style: TextStyle(color: Colors.white))),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(178, 60),
                            backgroundColor: Color.fromARGB(255, 14, 18, 68),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: EdgeInsets.all(16)),
                        child:
                            Text("Save", style: TextStyle(color: Colors.white)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
