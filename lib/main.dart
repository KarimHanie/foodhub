import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodhub/arguments/verification_arguments.dart';
import 'package:foodhub/login.dart';
import 'package:foodhub/onboardscreen.dart';
import 'package:foodhub/phoneegistration.dart';
import 'package:foodhub/resetpassword.dart';
import 'package:foodhub/sign_up.dart';
import 'package:foodhub/splash_screen.dart';
import 'package:foodhub/verificationcode.dart';
import 'package:foodhub/welcom_screen.dart';

import 'Route/routes.dart';

void main() {
  runApp( const FoodHub());
}
class FoodHub extends StatelessWidget{
  const FoodHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
      routes: {
        Routes.welcomeScreen: (context) =>WelcomeScreen(),
        Routes.onBoard:(context)=>OnBoardScreen(),
        Routes.signUp:(context)=> SignUp(),
        Routes.login:(context)=>Login(),
        Routes.resetPassword:(context)=>ResetPassword(),
        Routes.phoneRegistration:(context)=> PhoneRegistration(),
        Routes.verificationCode:(context)=>VerificationCode(arguments: ModalRoute.of(context)!.settings.arguments as VerificationArguments ),

      },

    );
  }


}


