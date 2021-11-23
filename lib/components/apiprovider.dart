import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:tubes_mdp/components/weaponapi.dart';

class DetailProvider extends ChangeNotifier {
  static getRecomendedWP() async {
    var result = await http
        .get(Uri.parse('https://jaczk.github.io/MDPAPIValorant/db.json'));
    print(result.statusCode);
    print(result.body);
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Detail> sites = data.map((item) => Detail.fromJson(item)).toList();
      return sites;
    } else {
      return <Detail>[];
    }
  }
}
