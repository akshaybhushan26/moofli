// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:moofli/pages/complete_profile.dart';
import 'forgotPassword.dart';
import 'signUp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
                child: SafeArea(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
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
                    const Text("MOOFLI",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.black,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                    ),
                    const Text(
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                    Container(
                      width: 68,
                      height: 3,
                      decoration: const BoxDecoration(
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
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Password',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Align(alignment: Alignment.centerRight),
                    TextButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const forgotPassword()),
                        );
                      },
                    child: const Text('Forgot Password?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(175, 0, 0, 0),
                    )
                    ,),),
                    const SizedBox(height: 20),
                  ],
                ),
                const SizedBox(height: 5),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 329,
                      height: 51,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
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
                      padding: const EdgeInsets.all(3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.white,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CompleteProfile1()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, left: 30, right: 30),
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return const LinearGradient(
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
                                child: const Text(
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
                const SizedBox(height: 4,),
                const Text("Not Registered Yet?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                Row(
                  children: [
                    Container(
                      width: 148,
                      height: 1,
                      decoration: const BoxDecoration(color: Color.fromARGB(255, 95, 95, 95)),
                    ),
                    const SizedBox(width: 4,),
                    const Text("OR"),
                    const SizedBox(width: 4,),
                    Container(
                      width: 148,
                      height: 1,
                      decoration: const BoxDecoration(color: Color.fromARGB(255, 95, 95, 95)),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                  SizedBox(
                    height: 53.4,
                    width: 267,
                    child: ElevatedButton(onPressed: (){
                    },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding:EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))), 
                    child: 
                    Image.asset('lib/icons/Google.jpeg', fit: BoxFit.fitWidth,),
                      ),
                  ),
              ],
            ),
          )
        )
      )
    );
  }
}
