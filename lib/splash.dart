import 'package:flutter/material.dart';
import 'package:trail_project/Home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      print("After 3 seconds");
      //This block of code will execute after 3 sec of app launch
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image(image: AssetImage('images/Logo.png')),
        ),
      ),
    );
  }
}
