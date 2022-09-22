// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //parent colun
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24)),
                  border: Border.all(
                    color: Color.fromARGB(255, 216, 212, 212),
                  ),
                ),
                height: 208,
                child: Column(
                  children: [
                    //Parent Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //left row
                        Padding(
                          padding: const EdgeInsets.only(left: 12, top: 12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/emmy.jpg'),
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Hi Janet,',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        //right row
                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 12),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 10),
                              Icon(Icons.question_mark_sharp, size: 20),
                              SizedBox(width: 10),
                              Icon(Icons.notifications, size: 22),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 37),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TopContainersWidget(
                            mainIcon: Icons.account_balance_wallet,
                            mainText: 'Wallet Balance',
                            suTtext: 'N 2,342:00',
                          ),
                          TopContainersWidget(
                            mainIcon: Icons.clean_hands,
                            mainText: 'Reward Balance',
                            suTtext: 'N 2,342:00',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(82, 67, 210, 1),
                        Color.fromRGBO(73, 27, 132, 1),
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Congratulations!!',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  letterSpacing: 1,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'You’ve completed all your tasks for\nthe week and you won 150 points.',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              width: 115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Redeem Now!',
                                  style: GoogleFonts.manrope(
                                    color: Color.fromRGBO(73, 27, 132, 1),
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          'assets/images/treasure.png',
                          width: 75,
                          height: 75,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(73, 27, 132, 1),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  height: 165,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 8, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Virtual',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 11),
                            Text(
                              '1234   5678   9012   3456',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Expiry date             Cvv',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              '  12/34             123',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Janet M Doe',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/images/mastercard.png',
                            width: 150,
                            height: 150,
                          ),
                          Expanded(
                            child: Text(
                              'mastercard',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Transaction History',
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'This month',
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                        child: Divider(
                          height: 3,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textheads(text: 'Name'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Textheads(text: 'Date'),
                        SizedBox(width: 50),
                        Textheads(text: 'Time'),
                        SizedBox(width: 60),
                        Textheads(text: 'Points'),
                        SizedBox(width: 5),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10,
                color: Colors.black,
              ),
              TransactionRow(
                bgcolor: Colors.greenAccent,
                pointsColor: Color.fromRGBO(29, 150, 74, 1),
                points: '+50points',
                imagePath: 'assets/images/gift.png',
              ),
              SizedBox(height: 20),
              TransactionRow(
                bgcolor: Color.fromRGBO(229, 146, 165, 1),
                pointsColor: Colors.redAccent,
                points: '-50points',
                imagePath: 'assets/images/gift.png',
              ),
              SizedBox(height: 20),
              TransactionRow(
                bgcolor: Color.fromRGBO(229, 146, 165, 1),
                pointsColor: Colors.redAccent,
                points: '-50points',
                imagePath: 'assets/images/gift.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
