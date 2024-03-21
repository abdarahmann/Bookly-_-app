
import 'package:flutter/material.dart';

class SliderText extends StatelessWidget {
  const SliderText({
    super.key,
    required this.sliderAnimation,
  });

  final Animation<Offset> sliderAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: sliderAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        );
      },
      animation: sliderAnimation,
    );
  }
}