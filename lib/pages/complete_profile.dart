import 'package:flutter/material.dart';

class CompleteProfile1 extends StatefulWidget {
  const CompleteProfile1({super.key});

  @override
  State<CompleteProfile1> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile1> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/icons/logo.png',
                      height: 46,
                      width: 46,
                    ),
                    const Text(
                      "MOOFLI",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Complete your",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 8,
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
                        Container(
                          width: 325,
                          height: 3,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFD9D9ED),
                                Color(0xFFD9D9ED),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You are",
                      style: TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "0%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 95, 95, 95),
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "there",
                      style: TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Name',
                    ),
                  ),
                const SizedBox(height: 20,),
                TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'dd-mm-yy',
                      labelText: 'DOB',
                    ),
                  ),
                const SizedBox(height: 15,),
                const Align
                (alignment: Alignment(-0.90, 0),
                  child: Text("Gender")),
                // buttons
                //male
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 0, bottom: 0, left: 0, right: 0),
                        child: Text(
                          "Male",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    //female
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 0, bottom: 0, left: 0, right: 0),
                        child: Text(
                          "Female",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    //Rather Not Say
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 0, bottom: 0, left: 0, right: 0),
                        child: Text(
                          "Rather Not Say",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // back button
                const SizedBox(height: 190),
                  Row(
                    children: [
                      SizedBox(
                        height:32,
                        width: 32,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: Image.asset(
                            'lib/icons/back.jpeg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      const SizedBox(width: 207,),
                      // Next button
                      SizedBox(
                        height:41,
                        width: 89,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          child: Image.asset(
                            'lib/icons/next.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
