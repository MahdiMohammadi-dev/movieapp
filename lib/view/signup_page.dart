import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:movieapp/view/mainscreen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 25, 27, 1),
      body: Stack(
        children: [
          ///TODO:Two Circle Blur in BackGround
          Positioned(
            top: 40,
            left: -30,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(254, 83, 152, 1)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 90, sigmaY: 90),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            right: -40,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(9, 251, 211, 1)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 90, sigmaY: 90),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ///TODO:Image with Border Gradient
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    width: 5,
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(254, 83, 152, 1),
                        Color.fromRGBO(254, 83, 152, 0),
                        Color.fromRGBO(9, 251, 211, 0),
                        Color.fromRGBO(9, 251, 211, 1),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/sign.png',
                          ))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Center(
                  child: Text(
                    "Watch movies in\n Virtual Reality",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "Download and watch offline\n wherever you are",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                          border: const GradientBoxBorder(
                              width: 3.5,
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(254, 83, 152, 1),
                                Color.fromRGBO(9, 251, 211, 1),
                              ])),
                          borderRadius: BorderRadius.circular(40)),
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(254, 83, 152, 0.3),
                              Color.fromRGBO(9, 251, 211, 0.3),
                            ])),
                        child: const Center(
                            child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        )),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
