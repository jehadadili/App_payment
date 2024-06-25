import 'package:card/features/core/util/styles.dart';
import 'package:flutter/material.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.text, required this.value});
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.style18bold,
        ),
      ],
    );
  }
}
