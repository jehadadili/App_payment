import 'package:card/features/core/util/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onpressed});
  final String text;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 73,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff34A853),
      ),
      child: TextButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: Styles.style22,
        ),
      ),
    );
  }
}
