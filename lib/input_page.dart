import 'dart:io';
import 'constants.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'kushagra_card.dart';
import 'icon_content.dart';


const heightOfBottomContainer=80.0;
const activeCardColor=Color(0xFF1D1E33);
const inactiveCardColor=Color(0xFF111328);

bool isMale=false;
bool isFemale=false;
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color currentColor1=inactiveCardColor;
  Color currentColor2=inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
              'BMI CALCULATOR'
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              currentColor1=activeCardColor;
                              currentColor2=inactiveCardColor;
                              isMale=true;
                              isFemale=false;
                            });
                          },
                          child: KushagraCard(
                            cardColor: currentColor1,
                            cardChild: IconContent(
                              icon: FontAwesomeIcons.mars,
                              label: 'MALE',
                            ),
                          ),
                        )
                    ),
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor2=activeCardColor;
                              currentColor1=inactiveCardColor;
                              isFemale=true;
                              isMale=false;
                            });
                          },
                          child: KushagraCard(
                            cardColor: currentColor2,
                            cardChild: IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: 'FEMALE',
                            ),
                          ),
                        )
                    ),
                  ],
                )
            ),
            Expanded(
                child: KushagraCard(
                  cardColor: activeCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: Constants().kFontStyle,
                      ),
                      // Slider(
                      //   onChanged: (){},
                      //   value: ,
                      //
                      // ),
                    ],
                  )
                ),
            ),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: KushagraCard(
                          cardColor: activeCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                        )
                    ),
                    Expanded(
                        child: KushagraCard(
                          cardColor: activeCardColor,
                          cardChild: IconContent(
                              icon: FontAwesomeIcons.mars,
                              label: 'MALE',
                          ),
                        ),
                    ),
                  ],
                )
            ),
            Container(
              color: const Color(0xFFEB1555),
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: heightOfBottomContainer,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




