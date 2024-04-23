import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size;
    var height;
    var width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            "images/menu.svg",
            width: 24,
            height: 24,
          ),
        ),
        title: Container(
          width: 82,
          height: 30,
          child: Text(
            "Halakat",
            style: TextStyle(
                color: HexColor("#18392B"),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 170,
                      width: 345,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [HexColor("#006754"), HexColor("#87d1a4")],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(23)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 29,
                    left: 62,
                    bottom: 85,
                    child: Text(
                      "إنضم لحلقة",
                      style: TextStyle(
                        fontFamily: "Amiri",
                        fontSize: 24,
                        color: HexColor("FFFFFF"),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(
                    child: Image.asset(
                      "images/maskgroup.png",
                      width: 445.34,
                    ),
                  )),
                  Positioned(
                    top: 29,
                    left: 216,
                    right: 33,
                    child: Container(
                      child: Image.asset(
                        "images/pngwing.png",
                        height: 125,
                        width: 125,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 88,
                      left: 37,
                      bottom: 25,
                      child: SvgPicture.asset(
                        "images/Component1.svg",
                        height: 31,
                        width: 131,
                      )),
                  Positioned(
                    top: 61,
                    bottom: 73,
                    left: 183,
                    right: 175,
                    child: SvgPicture.asset(
                      "images/Vector.svg",
                      height: 10.48,
                      width: 9.52,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    bottom: 148,
                    left: 285,
                    right: 77,
                    child: SvgPicture.asset(
                      "images/Vector3.svg",
                      height: 6.67,
                      width: 5.71,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 160,
                    width: 163,
                    decoration: BoxDecoration(
                      color: HexColor("FEF6F4"),
                        borderRadius: BorderRadius.all(Radius.circular(23)

                        )
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
