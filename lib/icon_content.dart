import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon,required this.label});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(label,
            style: const TextStyle(
              letterSpacing: 2,
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          ),
        )
      ],
    );
  }
}