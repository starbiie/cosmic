import 'package:coffeeshop/planets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

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
                    "Favourites",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: HexColor("091522"),
                        borderRadius: BorderRadius.circular(25)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
                                SizedBox(height: 455,
                                  child: ListView.builder(itemCount: planets.length,itemBuilder: (context, index) {
                                  return    Column(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: width,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage("img/homecenterbacgroundImage.png"))),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 25,
                                              ),


                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Image.asset(planets[index].imagePath,scale: 0.5,),

                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        planets[index].name,
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: HexColor("11DCE8")),
                                                      ),
                                                      const SizedBox(height: 10,),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: Text(
                                                          "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for",
                                                          style: TextStyle(color: Colors.white),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 5),
                                                    ],
                                                  ),
                                                  const Icon(Icons.favorite_border, color: Colors.white),
                                                  const SizedBox(
                                                    width: 17,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,)
                                    ],
                                  );
                                                      },),
                                )

          ],
        ),
      ),
    )));
  }
}
