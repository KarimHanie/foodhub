import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodhub/Route/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigateToWelcomeSCreen();
  }
  _navigateToWelcomeSCreen() async{
    await Future.delayed(Duration(milliseconds: 1500,));
    Navigator.pushReplacementNamed(context, Routes.welcomeScreen);

  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: const Color(0xffFE724C),
    ));
    return Scaffold(

      backgroundColor: const Color(0xffFE724C),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 93,
              height: 93,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  'assets/images/splashScreenLogo.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "FOOD HUB",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Phosphate',

              ),
            ),
          ],
        ),
      ),
    );
  }
}
