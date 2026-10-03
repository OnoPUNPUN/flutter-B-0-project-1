import 'package:flutter/material.dart';
import 'package:go_green/pages/onborading/onborading_two_page.dart';
import 'package:go_green/widgets/app_button.dart';
import 'package:go_green/widgets/onborading_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboradingOnePage extends StatelessWidget {
  static const name = "/onboradin-one-page";
  const OnboradingOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 0, top: 80),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: FractionallySizedBox(
                  child: Image.asset(
                    "assets/images/plant2.png",
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ),
              const SizedBox(height: 78),
              Text(
                "Discover Your Type\nof Plant",
                textAlign: .center,
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                "Tips N Tricks to grow a\nheathy plant",
                textAlign: .center,
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Spacer(),
              AppButton(
                title: "Continue",
                onPressed: () {
                  Navigator.pushNamed(context, OnboradingTwoPage.name);
                },
                rightPadding: 20,
              ),
              const SizedBox(height: 16),
              OnboradingPageIndicator(activeIndex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
