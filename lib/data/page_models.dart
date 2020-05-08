import 'package:flutter/material.dart';

List<PageModel> pages = [
  PageModel(
    icon: Icons.place,
    title: 'Travel the world',
    subtitle: "Keep track of all the countries you've visited",
    img: 'assets/images/mountain.jpg',
  ),
  PageModel(
    icon: Icons.stars,
    title: 'Leaderboard',
    subtitle:
        "Challege your friends and discover the most visited countries in the world",
    img: 'assets/images/baloon.jpg',
  ),
  PageModel(
    icon: Icons.favorite,
    title: 'New Destinations',
    subtitle:
        "Recommended countries and trips suggest according on your preferences",
    img: 'assets/images/road.jpg',
  ),
];

class PageModel {
  final IconData icon;
  final String title, subtitle, img;

  PageModel({this.icon, this.title, this.subtitle, this.img});
}
