import 'package:ecommerce_app/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:community_material_icon/community_material_icon.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({
    Key key,
  }) : super(key: key);

  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  bool isRememberMe = false;

  var formkey = GlobalKey<FormState>();
  var name = TextEditingController();
  var phone = TextEditingController();
  var address = TextEditingController();

  void handleSubmit() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
    }
  }

  // void handleReset() {
  //   name.clear();
  //   phone.clear();
  //   address.clear();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/dollar-544956_1280.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 90, left: 20),
                color: Color(0xFF3b5999).withOpacity(.60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Welcome To",
                        style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.amber,
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: " Ecommerce",
                            style: TextStyle(
                              color: Color(0xFFF59E0B),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Please login/signup to continue",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            child: Container(
              height: 350,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                  color: !isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 60,
                                  color: Colors.amber,
                                )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Signup",
                                style: TextStyle(
                                  color: isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 60,
                                  color: Colors.amber,
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Form(
                            key: formkey,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  controller: name,
                                  decoration: InputDecoration(
                                      hintText: "enter name",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                      ),
                                      prefixIcon:
                                          Icon(Icons.account_box_outlined)),
                                  // ignore: missing_return
                                  validator: (value) {
                                    if (value.length == 0) {
                                      return ("name is required");
                                    }
                                    // ignore: unused_label
                                    onSaved:
                                    // ignore: unnecessary_statements
                                    (value) {};
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: phone,
                                  keyboardType: TextInputType.number,
                                  maxLength: 11,
                                  decoration: InputDecoration(
                                      hintText: "enter number",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                      ),
                                      prefixIcon: Icon(Icons.phone)),
                                  // ignore: missing_return
                                  validator: (value) {
                                    if (value.length < 11) {
                                      return ("phone number shouldn't be more then 11 digit ");
                                    }
                                    // ignore: unused_label
                                    onSaved:
                                    // ignore: unnecessary_statements
                                    (value) {};
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: address,
                                  decoration: InputDecoration(
                                      hintText: "address",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                      ),
                                      prefixIcon: Icon(
                                          Icons.add_location_alt_outlined)),
                                  // ignore: missing_return
                                  validator: (value) {
                                    if (value.length == 0) {
                                      return ("address is required");
                                    }
                                    // ignore: unused_label
                                    onSaved:
                                    // ignore: unnecessary_statements
                                    (value) {};
                                  },
                                ),
                                // SizedBox(
                                //   height: 200,
                                // ),
                                // GestureDetector(
                                //   onTap: () {
                                //     setState(() {
                                //       handleSubmit();
                                //     });
                                //   },
                                // ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 480,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  height: 90,
                  width: 90,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange[200],
                          Colors.red[400],
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height - 100,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Text(
                    "Or Sign in with:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                          primary: Colors.white,
                          backgroundColor: Palette.facebookColor,
                        ),
                        child: Row(
                          children: [
                            Icon(MaterialCommunityIcons.facebook),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Facebook"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                          primary: Colors.white,
                          backgroundColor: Palette.googleColor,
                        ),
                        child: Row(
                          children: [
                            Icon(MaterialCommunityIcons.google),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Google"),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
