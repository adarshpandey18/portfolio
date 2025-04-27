import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:gradient_txt/gradient_text.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/widgets/custom_count_button_widget.dart';

class CustomCountWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final int number;
  const CustomCountWidget({
    super.key,
    required this.title,
    required this.iconData,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.lightCardColor, width: 0.8),
        borderRadius: BorderRadius.circular(20),
        color: CustomColors.cardColor,
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GradientText(
                text: number.toString(),
                style: Theme.of(context).textTheme.displayLarge,
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              Text(
                '+',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          CustomCountButtonWidget(iconData: iconData, title: title),
        ],
      ),
    );
  }
}
