import 'package:flutter/cupertino.dart';

class Planet {
  final String name;
  final String imagePath;

  Planet({required this.name, required this.imagePath});
}

List<Planet> planets = [
  Planet(name: "Mercury", imagePath: "img/planet (1).png"),
  Planet(name: "Venus", imagePath: "img/venus.png"),
  Planet(name: "Earth", imagePath: "img/Earth.png"),
  Planet(name: "Mars", imagePath: "img/venus.png"),
  // Add more planets as needed
];
List<Map<String, dynamic>> details = [
  {
    'title': Image.asset("img/mass.png"),
    'subtitle': 'Mass',
    'kg': '(1024kg)',
    'points': '5.97',
  },
  {
    'title': Image.asset("img/gravity.png"),
    'subtitle': 'Gravity',
    'kg': '(m/s2)',
    'points': '9.8',
  },
  {
    'title': Image.asset("img/day.png"),
    'subtitle': 'Day',
    'kg': '(hours)',
    'points': '24',
  },


  {
    'title': Image.asset("img/velicocity.png"),
    'subtitle': 'Esc. Velocity ',
    'kg': '(km/s)',
    'points': '11.2',
  },
  {
    'title': Image.asset("img/day.png"),
    'subtitle': 'Mean',
    'kg': 'Temp (C)',
    'points': '15',
  },
  {
    'title': Image.asset("img/distoncefromsun.png"),
    'subtitle': 'Distance from ',
    'kg': 'Sun (106 km)',
    'points': '5.97',
  },
];
