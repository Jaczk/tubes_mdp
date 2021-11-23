import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:tubes_mdp/components/weaponapi.dart';
import 'dart:math' as math;

class detailskin extends StatelessWidget {
  final Detail detail;

  detailskin(this.detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          '${detail.name} Skin',
          style: TextStyle(fontFamily: 'Valorant'),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Image.network(detail.skin4)),
                  ),
                ),
                Text(
                  'Other Skins:',
                  style: TextStyle(fontFamily: 'Compacta', fontSize: 25),
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Image.network(detail.skin1)),
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Image.network(detail.skin2)),
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Image.network(detail.skin3)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
