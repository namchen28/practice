import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row1 extends StatelessWidget {
  const Row1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Search',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
        Text(
          'Wifi:tw1r_413_7G',
          style: TextStyle(fontSize: 12, color: CupertinoColors.inactiveGray),
        ),
      ],
    );
  }
}
