import 'package:flutter/material.dart';
import 'package:projectuts/constant.dart';
import 'dart:async';
import 'package:projectuts/login.dart';


class SplashScreen extends StatefulWidget {

_SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();

  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),

      );
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Icon(
            Icons.school,
            size: 100,
            color: utamaButtonColor,
          ),
          SizedBox(height: 24,),
          Text("LearnLink",
          style: TextStyle(color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 30,),),
        ],)
    )
    );
  }
}