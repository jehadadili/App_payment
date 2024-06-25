import 'package:card/features/core/util/custom_buttn.dart';
import 'package:card/features/payment_details/view/payment_details_view.dart';
import 'package:card/features/payment_details/view/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodsBootomSheet extends StatelessWidget {
  const PaymentMethodsBootomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PymentMethodListView(),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            text: "continuer",
            onpressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PaymentDetailsView();
              }));
            },
          )
        ],
      ),
    );
  }
}
