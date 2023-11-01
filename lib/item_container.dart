import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatefulWidget {
  const ItemContainer({
    super.key,
    required this.initIndex,
    required this.index,
    required this.image,
    required this.name,
    required this.description,
  });

  final int initIndex;
  final int index;
  final String image;
  final String name;
  final String description;
  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            border: widget.initIndex == widget.index
                ? Border.all(color: const Color.fromARGB(255, 255, 179, 103))
                : null,
            borderRadius: BorderRadius.circular(24),
            color: const Color.fromARGB(255, 40, 40, 40)),
        height: 186,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.image),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            Text(
              widget.description,
              style: const TextStyle(
                  fontSize: 12, color: CupertinoColors.inactiveGray),
            )
          ],
        ));
  }
}
