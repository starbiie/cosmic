import 'package:coffeeshop/planets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var isOn = false;
  var isCheck = false;
  var isCheck2 = false;
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
              fit: BoxFit.cover, image: AssetImage("img/Detailpage.png"))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: width,
              height: height * 0.2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("img/Navbar.png"))),
              child: Padding(
                padding: const EdgeInsets.only(right: 90.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: HexColor("091522"),
                            borderRadius: BorderRadius.circular(25)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ))),
                    const Text(
                      "My Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 150,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("img/profile.png"))),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 36,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 35,
                        backgroundImage: AssetImage("img/profilepr.png"),
                      ),
                    ),
                    title: Text(
                      "Rebeka aldridg",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Space adventurer",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 455,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("img/profilebackgroundimage2.png"))),
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Column(children: [
                  SizedBox(height: 15),
                  Row(children: [
                    Switch(activeColor: HexColor("11DCE8"),value: isOn, onChanged: (value) {
                setState(() {
                  isOn = value!;
                });
                    },),
                    Text("Show planetary progress",style: TextStyle(color: Colors.white),)
                  ],),

                  //adding personell prograss using leaner gradiant colors :E961FF, 00E5E5

                  SizedBox(height: 20), // Add some space between switch and circular progress indicator
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: CircularPercentIndicator(
                      radius: 120.0,
                      lineWidth: 15.0,
                      animation: true,
                      animationDuration: 1200,
                      percent: 0.7, // Adjust the percent as per your requirement
                      circularStrokeCap: CircularStrokeCap.round,
                      linearGradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          HexColor("00E5E5"), // Start color
                          HexColor("E961FF"), // End color
                          HexColor("00E5E5"), // Center color
                        ],
                      ),
                      center: Column(
                        children: [
                          SizedBox(height: 30),
                          Text(
                            "Personal \nprogress",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 19),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "87.1%", // Change text as needed
                            style: TextStyle(fontSize: 45, color: HexColor("859AF4"), fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
SizedBox(height: 15,),
                  Row(children: [
                    Transform.scale(
                      scale: 1.1, // Change the scale factor as per your requirement
                   
                     child: Checkbox(value: isCheck, onChanged: (value) {
                       setState(() {
                     isCheck = value!;
                       });
                     },
                     activeColor: HexColor("11DCE8"),
                     ),
                   ),

                    Text("Show me in Planet Rating",style: TextStyle(color: Colors.white),)
                  ],),

                  Row(children: [
                    Transform.scale(
                      scale: 1.1,
                      child: Checkbox(value: isCheck2, onChanged: (value) {
                        setState(() {
                          isCheck2 = value!;
                        });
                      },
                        activeColor: HexColor("11DCE8"),
                      ),
                    ),

                    Text("Show me in Planet Rating",style: TextStyle(color: Colors.white),)
                  ],),
                ],),
              ),
            )

          ],
        ),
      ),
    )));
  }
}
