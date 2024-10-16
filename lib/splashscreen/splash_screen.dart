import 'package:car_01/oneboarding/onebording.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetoscreen();
  }

  _navigatetoscreen() async {
    //Get.pu

    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => oneboarding(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 195, 220),
      body: Center(
        child: const Text(
          'Attendance',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
