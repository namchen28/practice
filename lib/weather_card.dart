import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({
    super.key,
    required this.humidity,
    required this.type,
    required this.mode,
    required this.icon,
  });

  final int humidity;
  final String type;
  final String mode;
  final String icon;
  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  bool switchMode = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Theme.of(context).primaryColor),
        height: 198,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.humidity}%',
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w500),
                ),
                Image.asset(widget.icon)
              ],
            ),
            Text(widget.type,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            const Text('Air',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.mode,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400)),
                CupertinoSwitch(
                  thumbColor: Colors.black,
                  activeColor: const Color.fromARGB(255, 255, 178, 103),
                  value: switchMode,
                  onChanged: (value) {
                    setState(() {
                      switchMode = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
