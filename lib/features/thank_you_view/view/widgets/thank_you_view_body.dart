import 'package:card/features/thank_you_view/view/widgets/custom_check_icon.dart';
import 'package:card/features/thank_you_view/view/widgets/custom_dashed_line.dart';
import 'package:card/features/thank_you_view/view/widgets/custom_thank_you_colum.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: const Color(0xffd9d9d9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: const Padding(
                padding: EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
                child: CustomThankYouColum()),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * .2 + 20,
              left: 20 + 8,
              right: 20 + 8,
              child: const CustomDashedLine()),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(top: -50, right: 0, left: 0, child: CustomChecIcon())
        ],
      ),
    );
  }
}
