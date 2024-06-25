import 'package:flutter/material.dart';

class CustomChecIcon extends StatelessWidget {
  const CustomChecIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffd9d9d9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xff34a853),
        child: Icon(
          Icons.check,
          size: 50,
        ),
      ),
    );
  }
}
