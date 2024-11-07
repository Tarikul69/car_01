import 'package:flutter/material.dart';

class change_password extends StatelessWidget {
  const change_password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Change Password',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              "Old Password",
              style: TextStyle(fontWeight: FontWeight.w500),
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
                  hintText: 'Enter old password'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Enter New Password",
                style: TextStyle(fontWeight: FontWeight.w500)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter new password'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(fontWeight: FontWeight.w500),
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
                  hintText: 'Enter email Address'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //Get.offAll(navigationbar());
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                  backgroundColor: Color.fromARGB(255, 14, 18, 68),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(16)),
              child: Text(
                "Registration",
                style: TextStyle(
                  color: Color.fromARGB(255, 248, 247, 247),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
