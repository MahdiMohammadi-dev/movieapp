import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(25, 25, 27, 1),
        body: Stack(children: [
          Positioned(
            top: 20,
            left: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(9, 251, 211, 1),
                  shape: BoxShape.circle),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 130, sigmaY: 130),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            right: 5,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(254, 83, 152, 1),
                  shape: BoxShape.circle),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 130, sigmaY: 130),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "What would you\n like to watch?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      colo
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                ),
              )
            ],
          )
        ]));
  }
}
