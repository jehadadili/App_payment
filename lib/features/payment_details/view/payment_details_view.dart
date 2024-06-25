import 'package:card/features/core/builder_app_bar.dart';
import 'package:card/features/core/util/custom_buttn.dart';
import 'package:card/features/payment_details/view/widgets/custom_credit_card.dart';
import 'package:card/features/payment_details/view/widgets/payment_method_list_view.dart';
import 'package:card/features/thank_you_view/view/thank_you_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Payment Details",),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: PymentMethodListView(),
            ),
            SliverToBoxAdapter(
              child: CustomCreditCard(
                formKey: formKey,
                autovalidateMode: autovalidateMode,
              ),
            ),
     
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                  child: CustomButton(
                    text: "Next",
                    onpressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ThankYouView();
                        }));
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
