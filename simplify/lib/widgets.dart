// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopContainersWidget extends StatelessWidget {
  IconData mainIcon;
  String mainText;
  String suTtext;

  TopContainersWidget(
      {required this.mainIcon, required this.mainText, required this.suTtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(82, 67, 210, 1),
        borderRadius: BorderRadius.circular(7),
      ),
      width: 154,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            mainIcon,
            color: Colors.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mainText,
                style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      fontSize: 8,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 4),
              Text(
                suTtext,
                style: GoogleFonts.manrope(
                  textStyle: TextStyle(
                      fontSize: 7,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.remove_red_eye,
                  size: 15,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Textheads extends StatelessWidget {
  String text;
  Textheads({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.manrope(
        textStyle: TextStyle(
          fontSize: 10,
          color: Color.fromRGBO(61, 52, 139, 0.6),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class TransactionRow extends StatelessWidget {
  Color bgcolor;
  Color pointsColor;
  String points;
  String imagePath;
  TransactionRow(
      {required this.bgcolor,
      required this.pointsColor,
      required this.points,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: bgcolor,
            backgroundImage: AssetImage(imagePath),
          ),
          Text(
            'SuperMart',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.3,
                color: Color.fromRGBO(13, 7, 60, 1),
              ),
            ),
          ),
          Text(
            '12/06/2022',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: Color.fromRGBO(5, 4, 11, 0.5),
              ),
            ),
          ),
          Text(
            '12:34',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: Color.fromRGBO(130, 129, 133, 1),
              ),
            ),
          ),
          Text(
            points,
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: pointsColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
