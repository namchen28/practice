import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({
    super.key,
    required this.val,
    required this.icon,
  });

  final double val;
  final String icon;

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double val = 0.5;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Slider.adaptive(
            activeColor: const Color.fromARGB(255, 255, 178, 103),
            inactiveColor: const Color.fromARGB(255, 79, 79, 79),
            thumbColor: Colors.black,
            value: val,
            onChanged: (value) {
              setState(() {
                val = value;
              });
            },
          ),
        ),
        Image.asset(widget.icon),
      ],
    );
  }
}
