import 'package:card/features/core/builder_app_bar.dart';
import 'package:card/features/core/util/custom_buttn.dart';
import 'package:card/features/core/util/styles.dart';
import 'package:card/features/my_catr/view/widgets/payment_methods_bootom_sheet.dart';
import 'package:flutter/material.dart';


class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Center(
                  child: Image.asset(
                "assets/Group.png",
              )),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  "Order Subtotal",
                  style: Styles.style18,
                ),
                const Spacer(),
                Text(
                  "\$42.97",
                  style: Styles.style18,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Discount",
                  style: Styles.style18,
                ),
                const Spacer(),
                Text(
                  "\$0",
                  style: Styles.style18,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Shipping",
                  style: Styles.style18,
                ),
                const Spacer(),
                Text(
                  "\$8",
                  style: Styles.style18,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              height: 37,
              color: Color(0xffC7C7C7),
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
              height: 16,
            ),
            CustomButton(
              text: "Complete Payment",
              onpressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const PaymentDetailsView();
                // }));
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  builder: (context) {
                    return const PaymentMethodsBootomSheet();
                  },
                );
              },
            ),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
