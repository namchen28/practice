import 'package:flutter/material.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/back.png',
          ),
          const Text('Bedroom', style: TextStyle(fontSize: 17)),
          Image.asset(
            'assets/bell.png',
          ),
        ],
      ),
    );
  }
}
