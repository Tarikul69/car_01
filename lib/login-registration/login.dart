import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .12,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Image.asset(
                  'assets/car.jpg',
                ),
              ),
            ),
            //Spacer(),
            Title(
                color: Colors.black,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Your Email'),
              validator: (String? value) {
                return;
                (value != null && value.contains('@'));
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  prefixIcon: Icon(Icons.password),
                  hintText: 'Your Password'),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                  focusColor: Color.fromARGB(255, 14, 18, 68),
                  value: true,
                  onChanged: (value) {},
                ),
                Text("Keepme Logged In"),
                Spacer(),
                InkWell(
                  onTap: () {
                    //Get.to(forgotpassword());
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 173, 4, 4),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
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
                "Login",
                style: TextStyle(
                  color: Color.fromARGB(255, 248, 247, 247),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //Get.to(registration());
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 100,
                    color: Colors.amber,
                  ),
                  Text("or continue with"),
                  Divider(
                    thickness: 100,
                    color: Colors.amber,
                  )
                ],
              ),
            ),

            Spacer()
          ],
        ),
      ),
    );
  }
}
