import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:tubes_mdp/components/weaponapi.dart';

class DetailWeapon extends StatelessWidget {
  final Detail detail;

  DetailWeapon(this.detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          detail.name,
          style: TextStyle(fontFamily: 'Valorant'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Container(
                height: 150,
                width: double.infinity,
                child: Image.network(detail.image),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              detail.name,
              style: TextStyle(
                  fontFamily: 'Compacta',
                  fontSize: 40,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Detail Weapon Status',
              style: TextStyle(fontFamily: 'Compacta', fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Category: ${detail.category}',
              style: TextStyle(fontFamily: 'Compacta', fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Cost: ${detail.cost}',
                style: TextStyle(fontFamily: 'Compacta', fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Fire Rate: ${detail.fireRate}',
                style: TextStyle(fontFamily: 'Compacta', fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Magazine Size: ${detail.magazineSize}',
                style: TextStyle(fontFamily: 'Compacta', fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Equip Time Seconds: ${detail.equipTimeSeconds}',
                style: TextStyle(fontFamily: 'Compacta', fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Reload Time Seconds: ${detail.reloadTimeSeconds}',
                style: TextStyle(fontFamily: 'Compacta', fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
