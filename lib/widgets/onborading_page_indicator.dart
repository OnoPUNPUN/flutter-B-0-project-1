import 'package:flutter/material.dart';
import 'package:go_green/core/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboradingPageIndicator extends StatelessWidget {
  final int activeIndex;
  const OnboradingPageIndicator({super.key, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: ExpandingDotsEffect(
          dotWidth: 40,
          dotHeight: 12,
          spacing: 10,
          radius: 16,
          activeDotColor: AppColors.activeIndicator,
          dotColor: AppColors.surface,
          expansionFactor: 1.8,
        ),
      ),
    );
  }
}
