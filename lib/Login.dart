import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'bottomnavbar.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("img/Splash.png"))),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset("img/Vector (5).png"),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: width,
                height: MediaQuery.of(context).size.height * 0.7 -
                    29, // Set the height as a percentage of device height
                child: AspectRatio(
                  aspectRatio: width /
                      MediaQuery.of(context).size.height *
                      0.7, // Adjust aspect ratio accordingly
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("img/Sign in (1).png"),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Sign in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 21),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: 280,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "email",
                                  hintStyle:
                                      TextStyle(color: HexColor("8D8E99")),
                                  fillColor: HexColor("091522"),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: HexColor("3A3A42"))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: 280,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: "password",
                                  hintStyle:
                                      TextStyle(color: HexColor("8D8E99")),
                                  fillColor: HexColor("091522"),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: HexColor("3A3A42"))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: HexColor("11DCE8")),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: [
                                      HexColor("E961FF"),
                                      HexColor("00E5E5")
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter)),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>  const BottomNavBar(),
                                    ));
                              },
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 21),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  color: HexColor("8D8E99"),
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "or sign in using",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: HexColor("8D8E99"),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: HexColor("8D8E99"),
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don’t have an account?",
                                style: TextStyle(color: HexColor("8D8E99")),
                              ),
                              Text(
                                " Sign Up",
                                style: TextStyle(color: HexColor("11DCE8")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
