import 'package:flutter/material.dart';
import 'package:foodhub/components/button.dart';

import 'Route/routes.dart';
import 'components/registration_background.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          RegistrationBackGround(
            color: Color(0xffffffff), // Screen background color
          ),
          SafeArea(
            child: Padding(
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
                      Navigator.of(context).pop();

                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    )),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 114, right: 53),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Resset Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 38),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 14, right: 113),
                    child: Container(
                      height: 29,
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          textAlign: TextAlign.start,
                          "Please enter your email address to\nrequest a password reset",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff9796A1)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 65,
                      child: TextFormField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Enter your Email",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xffFE724C)
                            )
                          ),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 58,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 63.5),
                  // Custom button
                  child: Button(text: "SEND NEW PASSWORD",routName: Routes.login),


                  ),

                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 63.5),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width,
                  //     height: 60,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(28),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Color(0xffFE724C).withOpacity(0.6),
                  //           spreadRadius: 2,
                  //           blurRadius: 20,
                  //           offset: Offset(0, 8)
                  //         )
                  //       ]
                  //     ),
                  //     child: ElevatedButton(
                  //       onPressed: () {},
                  //       style: ElevatedButton.styleFrom(
                  //         primary: Color(0xffFE724C),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(28),
                  //         ),
                  //       ),
                  //       child: Text("SEND NEW PASSWORD",
                  //       style: TextStyle(
                  //         letterSpacing: 2,
                  //         fontSize: 15,
                  //         fontWeight: FontWeight.w500
                  //       ),),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
