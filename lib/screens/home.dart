import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubes_mdp/components/apiprovider.dart';
import 'package:tubes_mdp/components/weaponapi.dart';
import 'package:tubes_mdp/screens/detailweapon.dart';
import 'package:tubes_mdp/screens/profile.dart';
import 'dart:convert';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:tubes_mdp/screens/weaponcard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var detailProvider = Provider.of<DetailProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'vAlorant weApon',
          style: TextStyle(fontFamily: 'Valorant'),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Detail> data = snapshot.data;
                int index = 0;
                return Column(
                    children: data.map((item) {
                  index++;
                  return Container(
                    margin: EdgeInsets.only(top: index == 1 ? 10 : 30),
                    child: WeaponCard(item),
                  );
                }).toList());
              } else if (snapshot.hasError) {
                return Text('Something Went Wrong');
              }
              return const CircularProgressIndicator();
            },
            future: DetailProvider.getRecomendedWP(),
          ),
        ],
      ),
    );
  }
}
