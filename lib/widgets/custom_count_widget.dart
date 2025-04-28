import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';
import 'package:portfolio/widgets/custom_count_button_widget.dart';

class CustomCountWidget extends StatefulWidget {
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
  State<CustomCountWidget> createState() => _CustomCountWidgetState();
}

class _CustomCountWidgetState extends State<CustomCountWidget> {
  var currentCount = 0;
  @override
  void initState() {
    Timer(
      Duration(milliseconds: 500),
      () => setState(() {
        currentCount = widget.number;
      }),
    );
    super.initState();
  }

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
              GradientAnimatedCounter(
                value: currentCount,
                duration: Duration(milliseconds: 1000),
                textStyle: Theme.of(context).textTheme.displayLarge!,
                gradient: const LinearGradient(
                  colors: [Colors.white, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),

              // AnimatedFlipCounter(
              //   duration: Duration(milliseconds: 1000),

              //   value: currentCount,
              //   textStyle: Theme.of(context).textTheme.displayLarge,
              // ),
              // GradientText(
              //   text: widget.number.toString(),
              //   style: Theme.of(context).textTheme.displayLarge,
              //   gradient: LinearGradient(
              //     colors: [Colors.white, Colors.black],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //   ),
              // ),
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
          CustomCountButtonWidget(
            iconData: widget.iconData,
            title: widget.title,
          ),
        ],
      ),
    );
  }
}

class GradientAnimatedCounter extends StatelessWidget {
  final int value;
  final Duration duration;
  final TextStyle textStyle;
  final Gradient gradient;

  const GradientAnimatedCounter({
    super.key,
    required this.value,
    required this.duration,
    required this.textStyle,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: value),
      duration: duration,
      builder: (context, val, child) {
        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return gradient.createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            );
          },
          child: Text(
            val.toString(),
            style: textStyle.copyWith(
              color: Colors.white,
            ), // Color is overridden by shader
          ),
        );
      },
    );
  }
}
