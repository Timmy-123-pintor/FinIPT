// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:airlogin/adminPage/flightList.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mainbackground.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 50, bottom: 100, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.airplane_ticket,
                    color: tWhite,
                    size: 40,
                  ),
                  const Text(
                    "Administrator",
                    style: TextStyle(
                        color: tWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: tWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: FlightList()),
          ),
        ],
      ),
    );
  }
}
