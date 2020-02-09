import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:problema_dois_digistarts/app/modules/home/home_page.dart';

class SplashScreenPage extends StatefulWidget {
  final String title;
  const SplashScreenPage({Key key, this.title = "SplashScreen"})
      : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomSplash(
        duration: 3000,
        imagePath: 'assets/images/logo.png',
        backGroundColor: Color(0xff0AF9ED),
        animationEffect: 'zoom-in',
        logoSize: 100,
        home: HomePage(),  
        ),
        );
  }
}
