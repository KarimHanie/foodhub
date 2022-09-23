import 'package:flutter/material.dart';
import 'arguments/verification_arguments.dart';
import 'components/registration_background.dart';
class VerificationCode extends StatelessWidget {
  VerificationArguments arguments;
   VerificationCode({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          RegistrationBackGround(
            color: Color(0xffffffff), // Screen background color
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 37,
              horizontal: 27,
            ),
            child: Container(
              height: 38,
              width: 38,
              // color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  )),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 114,right: 53),
                    child: Text(
                      "Verifiication Code",
                      style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 38),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 114,right: 53),
                    child: Text(
                      "Please type the verification code sent to ${arguments.email}",
                      style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 38),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

