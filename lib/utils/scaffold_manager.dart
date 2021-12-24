import 'package:flutter/material.dart';

class ScaffoldManager {
  static showText({required context, required text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
