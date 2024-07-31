// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names
import 'package:flutter/material.dart';
import 'package:moofli/pages/signUp.dart';
import 'loginPage.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/icons/logo.png',
                      height: 46,
                      width: 46,
                    ),
                    Text("MOOFLI",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.black,
                        )),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Text("Shuru se",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        color: Colors.black)),
                Text("Shuruwat",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 45,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2,
                    )),
                // progress bar
                Align(
                  alignment: Alignment(-0.55, 0),
                  child: Container(
                    width: 138,
                    height: 4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF108CFF),
                          Color(0xFF0EAB00),
                          Color(0xFFFFB800),
                          Color(0xFFFD0C0C)
                        ],
                      ),
                    ),
                  ),
                ),
                Text("Krte Hain!",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        color: Colors.black)),
                SizedBox(
                  height: 30,
                ),
                Text("SKILLOP serves as a dynamic tech society",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black)),
                Text("cluster, to build and grow together!",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black)),

                SizedBox(height: 150),
                // Log In button
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 208,
                      height: 51,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF42E2E),
                            Color(0xFFFFB800),
                            Color(0xFF0EAB00),
                            Color(0xFF25CED1)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.white,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 14, bottom: 14, left: 30, right: 30),
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      Color(0xFFF42E2E),
                                      Color(0xFFFFB800),
                                      Color(0xFF0EAB00),
                                      Color(0xFF25CED1)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds);
                                },
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // sign up button
                Container(
                  width: 208,
                  height: 51,
                  child: ElevatedButton(
                    style: (ElevatedButton.styleFrom(
                      elevation: 0,
                      side: BorderSide(style: BorderStyle.solid, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      backgroundColor: Colors.white,
                      textStyle: TextStyle(color: Colors.black),
                    )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 14, bottom: 14, left: 25, right: 25),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
