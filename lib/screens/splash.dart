import 'package:flutter/material.dart';
import 'package:tubes_mdp/screens/Navbar.dart';
import 'dart:async';

import 'home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 20),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Navbar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 110,
        ),
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://seeklogo.com/images/V/valorant-logo-FAB2CA0E55-seeklogo.com.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'VAlorant WeApon ShowcAse',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Valorant'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
