// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors
import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/map.gif",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
