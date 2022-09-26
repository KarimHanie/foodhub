import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/arguments/verification_arguments.dart';
import 'package:foodhub/components/registration_background.dart';
import 'Route/routes.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final double boarderSide = 15;
  String email="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RegistrationBackGround(
            color: Color(0xffffffff), // Screen background color
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 98, left: 26),
                    child: Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width / 3,
                      height: 42,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 29, horizontal: 26),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: 95,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Full name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 65,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(boarderSide),
                                        borderSide:
                                            BorderSide(color: Colors.transparent),
                                      ),
                                      fillColor: Color(0xff393948),
                                      filled: true,
                                      hintText: "Enter Your Name please",
                                      hintStyle:
                                          TextStyle(color: Color(0xffADADB8),
                                          fontSize: 17
                                          ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(boarderSide),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Email
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          child: Container(
                            // color: Colors.red,
                            width: MediaQuery.of(context).size.width,
                            // height: 93,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "E-mail",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  onChanged: (String value){
                                      email=value;
                                  },
                                  decoration: InputDecoration(
                                    floatingLabelBehavior: FloatingLabelBehavior.never,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(boarderSide),
                                      borderSide: BorderSide(
                                        color: Color(0xffFE724C)
                                      )
                                    ),
                                    labelText: "Your email or phone",
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(boarderSide),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Password
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 29, horizontal: 26),
                          child: Container(
                            // color: Colors.red,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  obscureText: true,
                                  obscuringCharacter: '•',
                                  decoration: InputDecoration(

                                     focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.deepOrange),
                                       borderRadius: BorderRadius.circular(boarderSide)
                                     ),
                                        floatingLabelBehavior: FloatingLabelBehavior.never,
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_red_eye,
                                          color: Color(0xffD0D2D1)),
                                    ),
                                    labelText: "Password",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(boarderSide),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Button SIGN UP
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 65),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffFE724C).withOpacity(0.6),
                              blurRadius: 20,
                              spreadRadius: 2,
                              offset: Offset(1, 8),
                            ),
                          ]),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.verificationCode,arguments:VerificationArguments(email: email) );
                        },
                        style: ElevatedButton.styleFrom(
                            shadowColor: Color(0xffFE724C),
                            primary: Color(0xffFE724C),
                            fixedSize:
                                Size(MediaQuery.of(context).size.width, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            )),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Already have an account? Login
                  SizedBox(
                    height: 32,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 78),
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Routes.login),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Already have an account?",
                                style: TextStyle(
                                  color: Color(0xff5B5B5E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                )),
                            TextSpan(
                                text: "Login",
                                style: TextStyle(
                                  color: Color(0xffFE724C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 100,),

                  Padding(
                    padding: EdgeInsets.only(right: 25, left: 25, top: 20),
                    child: Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Color(0xffB3B3B3),
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Sign up with",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff5B5B5E)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Color(0xffB3B3B3),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 57,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset("assets/images/FaceBook.png"),
                                      Text(
                                        "FACEBOOK",
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 57,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset("assets/images/Google.png"),
                                      Text(
                                        "GOOGLE",
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
