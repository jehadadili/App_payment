import 'package:card/features/core/util/styles.dart';
import 'package:card/features/thank_you_view/view/widgets/card_info_widget.dart';
import 'package:card/features/thank_you_view/view/widgets/payment_item_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomThankYouColum extends StatelessWidget {
  const CustomThankYouColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Thank you!',
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
        Text(
          'Your transaction was successful',
          textAlign: TextAlign.center,
          style: Styles.style20,
        ),
        const SizedBox(
          height: 42,
        ),
        const PaymentItemInfo(
          text: "Date",
          value: "03/24/2023",
        ),
        const SizedBox(
          height: 20,
        ),
        const PaymentItemInfo(
          text: "Time",
          value: "10 : 15 AM",
        ),
        const SizedBox(
          height: 20,
        ),
        const PaymentItemInfo(
          text: "To",
          value: "sam Louis",
        ),
        const Divider(
          height: 60,
          thickness: 2,
        ),
        Row(
          children: [
            Text(
              "Total",
              style: Styles.style24,
            ),
            const Spacer(),
            Text(
              "\$50.97",
              style: Styles.style24,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const CardInfoWidget(),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              FontAwesomeIcons.barcode,
              size: 50,
            ),
            const SizedBox(
              width: 50,
            ),
            Container(
              width: 113,
              height: 58,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1.5, color: Color(0xFf34a853)),
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: Center(
                child: Text("PAID",
                    style: Styles.style24.copyWith(
                      color: const Color(0xFf34a853),
                    )),
              ),
            )
          ],
        ),
        SizedBox(
          height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
        )
      ],
    );
  }
}
