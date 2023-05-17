import 'package:flutter/material.dart';


class KushagraCard extends StatelessWidget {
  const KushagraCard({super.key, required this.cardChild, required this.cardColor});

  final Widget cardChild;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}