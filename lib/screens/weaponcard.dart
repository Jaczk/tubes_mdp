import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubes_mdp/components/apiprovider.dart';
import 'package:tubes_mdp/components/weaponapi.dart';
import 'package:tubes_mdp/screens/detailweapon.dart';
import 'dart:math' as math;
import 'package:tubes_mdp/screens/home.dart';

class WeaponCard extends StatelessWidget {
  final Detail detail;
  WeaponCard(this.detail);
  @override
  Widget build(BuildContext context) {
    var detailProvider = Provider.of<DetailProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.pinkAccent.withOpacity(0.75)],
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailWeapon(detail),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            child: Stack(
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Image.network(
                    detail.image,
                    height: 150,
                    width: 600,
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
