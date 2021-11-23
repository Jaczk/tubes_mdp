import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Detail {
  String name,
      fireRate,
      magazineSize,
      equipTimeSeconds,
      reloadTimeSeconds,
      cost,
      category,
      skin1,
      skin2,
      skin3,
      skin4,
      image;
  Detail(
      {this.category,
      this.cost,
      this.equipTimeSeconds,
      this.fireRate,
      this.image,
      this.magazineSize,
      this.name,
      this.reloadTimeSeconds,
      this.skin1,
      this.skin2,
      this.skin3,
      this.skin4});

  Detail.fromJson(json) {
    name = json['name'];
    fireRate = json['fireRate'];
    magazineSize = json['magazineSize'];
    equipTimeSeconds = json['equipTimeSeconds'];
    reloadTimeSeconds = json['reloadTimeSeconds'];
    cost = json['cost'];
    category = json['category'];
    skin1 = json['skin1'];
    skin2 = json['skin2'];
    skin3 = json['skin3'];
    skin4 = json['skin4'];
    image = json['image'];
  }
}
