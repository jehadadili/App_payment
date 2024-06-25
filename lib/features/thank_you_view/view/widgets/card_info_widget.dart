import 'package:card/features/core/util/styles.dart';
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          Image.asset("assets/logo.jpg"),
          const SizedBox(
            width: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Credit Card",
                style: Styles.style18,
              ),
              Text(
                "Mastercard **78",
                style: Styles.style18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
