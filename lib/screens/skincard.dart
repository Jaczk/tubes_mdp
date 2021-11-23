import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubes_mdp/components/apiprovider.dart';
import 'package:tubes_mdp/components/weaponapi.dart';
import 'package:tubes_mdp/screens/detailskin.dart';
import 'package:tubes_mdp/screens/detailweapon.dart';
import 'package:tubes_mdp/screens/likebutton.dart';
import 'package:tubes_mdp/screens/profile.dart';
import 'dart:convert';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:tubes_mdp/screens/weaponcard.dart';

class SkinCard extends StatelessWidget {
  final Detail detail;
  SkinCard(this.detail);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.pinkAccent],
          ),
        ),
        height: 200,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => detailskin(detail)));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Container(
                        height: 180,
                        width: 400,
                        child: Image.network(detail.skin4),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                        child: Text(
                      detail.name,
                      style: TextStyle(
                          fontFamily: 'Compacta',
                          letterSpacing: 1.5,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
