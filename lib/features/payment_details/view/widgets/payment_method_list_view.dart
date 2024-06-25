import 'package:card/features/payment_details/view/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PymentMethodListView extends StatefulWidget {
  const PymentMethodListView({super.key});

  @override
  State<PymentMethodListView> createState() => _PymentMethodListViewState();
}

class _PymentMethodListViewState extends State<PymentMethodListView> {
  final List<String> paymentMethodItem = const [
    "assets/cart.png",
    "assets/icon.jpg",
    "assets/iconCarrier.png"
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PymentMethodItem(
                isActive: activeIndex == index,
                image: paymentMethodItem[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
