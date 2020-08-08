import 'package:flutter/material.dart';
import "dart:math";

T getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
}

final colorList = [
        Colors.teal, Colors.deepOrange, Colors.pink, Colors.redAccent, 
        Colors.green, Colors.cyan, Colors.lightBlue, Colors.indigo,
        Colors.purple
    ];