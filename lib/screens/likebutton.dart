import 'dart:ui';

import 'package:flutter/material.dart';

Widget LikeButton() {
  bool isClicked;
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: () {},
    child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 15,
      ),
    ),
  );
}
