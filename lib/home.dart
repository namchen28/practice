import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/app_bar_row.dart';
import 'package:practice/slider.dart';
import 'package:practice/weather_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switch_mode = true;
  bool switch_on = true;
  double light_val = 0.5;
  double lamp_val = 0.3;
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
                padding: const EdgeInsets.only(top: 350),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WeatherCard(
                            humidity: 36,
                            icon: 'assets/humidity.png',
                            mode: 'Mode 2',
                            type: 'Humidifier',
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          WeatherCard(
                            humidity: 73,
                            icon: 'assets/clean.png',
                            mode: 'On',
                            type: 'Purifier',
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Theme.of(context).primaryColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Main light',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            slider(val: light_val, icon: 'assets/lamp.png'),
                            const Text(
                              'Floor lamp',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            slider(val: lamp_val, icon: 'assets/Tablelamp.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const AppBarRow(),
          ]),
        ),
      ],
    );
  }
}

Widget cover = Image.asset('assets/cover.png');
