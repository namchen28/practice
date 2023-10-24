import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double light_val = 0.5;
  double lamp_val = 0.3;
  bool switch_mode = true;
  bool switch_on = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Stack(children: [
            cover,
            Positioned.fill(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 350),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Theme.of(context).primaryColor),
                              height: 198,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '36%',
                                        style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Image.asset('assets/humidity.png')
                                    ],
                                  ),
                                  Text('Humudifier',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                  Text('Air',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Mode 2',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                      CupertinoSwitch(
                                        thumbColor: Colors.black,
                                        activeColor:
                                            Color.fromARGB(255, 255, 178, 103),
                                        value: switch_mode,
                                        onChanged: (value) {
                                          setState(() {
                                            switch_mode = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Theme.of(context).primaryColor),
                              height: 198,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '73%',
                                        style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Image.asset('assets/clean.png')
                                    ],
                                  ),
                                  Text(
                                    'Purifier',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Air',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'On',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      CupertinoSwitch(
                                        thumbColor: Colors.black,
                                        activeColor:
                                            Color.fromARGB(255, 255, 178, 103),
                                        value: switch_on,
                                        onChanged: (value) {
                                          setState(() {
                                            switch_on = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Theme.of(context).primaryColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main light',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Slider.adaptive(
                                    activeColor:
                                        Color.fromARGB(255, 255, 178, 103),
                                    inactiveColor:
                                        Color.fromARGB(255, 79, 79, 79),
                                    thumbColor: Colors.black,
                                    value: light_val,
                                    onChanged: (value) {
                                      setState(() {
                                        light_val = value;
                                      });
                                    },
                                  ),
                                ),
                                Image.asset('assets/lamp.png'),
                              ],
                            ),
                            Text(
                              'Floor lamp',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Slider.adaptive(
                                      activeColor:
                                          Color.fromARGB(255, 255, 178, 103),
                                      inactiveColor:
                                          Color.fromARGB(255, 79, 79, 79),
                                      thumbColor: Colors.black,
                                      value: lamp_val,
                                      onChanged: (value) {
                                        setState(() {
                                          lamp_val = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Image.asset('assets/Tablelamp.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/back.png',
                  ),
                  Text('Bedroom', style: TextStyle(fontSize: 17)),
                  Image.asset(
                    'assets/bell.png',
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

Widget cover = Image.asset('assets/cover.png');
