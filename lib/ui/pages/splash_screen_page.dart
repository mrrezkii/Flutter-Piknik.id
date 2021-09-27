import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basic/ui/pages/main_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  
  @override
  void initState() {
    startSplashScreen();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/logo.png", width: 150,),
          )
        ],
      )
    );
  }

  startSplashScreen () async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context){
            return MainPage();
          }));
    });
  }
}
