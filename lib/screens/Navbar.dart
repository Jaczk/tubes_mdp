import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tubes_mdp/screens/home.dart';
import 'package:tubes_mdp/screens/listSkin.dart';
import 'package:tubes_mdp/screens/profile.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedPage = 0;

  final _pageOptions = [
    HomePage(),
    SkinWeapon(),
    About(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.redAccent,
        onTap: (int val) => setState(() => selectedPage = val),
        currentIndex: selectedPage,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.loyalty, title: 'Skins'),
          FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
        ],
      ),
    );
  }
}
