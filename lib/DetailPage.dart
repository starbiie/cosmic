import 'package:coffeeshop/planets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

import 'bottomnavbar.dart';

class DetailPages extends StatefulWidget {
  const DetailPages({Key? key});

  @override
  State<DetailPages> createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
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
              fit: BoxFit.cover,
              image: AssetImage("img/Detailpage.png"), // Update image path here
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [

                // Padding(
                //   padding: const EdgeInsets.only(left: 15.0, right: 15),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //           alignment: Alignment.center,
                //           height: 75,
                //           width: 75,
                //           decoration: BoxDecoration(
                //               image: const DecorationImage(
                //                   fit: BoxFit.cover,
                //                   image: AssetImage("img/icons.png")),
                //               borderRadius: BorderRadius.circular(20)),
                //           child: IconButton(
                //               onPressed: () {},
                //               icon: const Icon(
                //                 Icons.arrow_back,
                //                 color: Colors.white,
                //               ))),
                //       Container(
                //         alignment: Alignment.center,
                //         height: 75,
                //         width: 75,
                //         decoration: BoxDecoration(
                //             image: const DecorationImage(
                //                 fit: BoxFit.cover,
                //                 image: AssetImage("img/icons.png")),
                //             borderRadius: BorderRadius.circular(20)),
                //         child: IconButton(
                //             onPressed: () {},
                //             icon: const Icon(
                //               Icons.favorite_border,
                //               color: Colors.white,
                //             )),
                //       )
                //     ],
                //   ),
                // ),

                Container(
                  alignment: Alignment.center,
                  width: width,
                  height: height * 0.2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage("img/Navbar.png"))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: HexColor("091522"),
                                borderRadius: BorderRadius.circular(25)),
                            child: IconButton(
                                onPressed: () {}, icon: const Icon(Icons.menu,color: Colors.white,))),

                        Container(
                          decoration: BoxDecoration(
                              color: HexColor("091522"),
                              borderRadius: BorderRadius.circular(25)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.person_2_outlined,color: Colors.white,)),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 449,
                      width: width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("img/detailpagebackground.png"))),
                      child: Column(
                        children: [
                          SizedBox(height: 90),
                          Text(
                            "Earth",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                            ),
                          Expanded(
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemCount: details.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 250,
                                  width: 250,
                                  child: Column(
                                    children: [

                                  details[index]['title'],

                                      Text(
                                        details[index]['subtitle'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        details[index]['kg'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                          details[index]['points'],
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),

                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 200,
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
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>  const BottomNavBar(),
                                //     ));
                              },
                              child: const Text(
                                "Visit",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 21),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                    Positioned(
                        top: -60,
                        left: width / 3.5,
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset("img/earthhh.png"))),
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
