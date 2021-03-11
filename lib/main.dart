import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'View/Login_Screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
    ),
  );
}
class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        title:Text('MARKET',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.white,
          ),),

        seconds: 10,
        navigateAfterSeconds: new Login(),


        image: Image.network('https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX5559842.jpg'),



        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }
}