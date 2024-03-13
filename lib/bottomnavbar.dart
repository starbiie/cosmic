import 'package:coffeeshop/home.dart';
import 'package:coffeeshop/profile.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'favourite.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  List pot = [const Home(),const Favourite(),const Profile()];
  var indexNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(

        decoration: const BoxDecoration(
          color: Colors.black87,

        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favourites"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile")
          ],
          selectedItemColor: HexColor("11DCE8"),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedItemColor: HexColor("8D8E99"),
          currentIndex: indexNumber,
          onTap: (int index) {
            setState(() {
              indexNumber = index;
            });
          },
        ),
      ),
      body: pot.elementAt(indexNumber),
    );
  }
}
