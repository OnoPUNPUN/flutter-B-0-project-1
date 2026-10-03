import 'package:flutter/material.dart';
import 'package:go_green/pages/onborading/onborading_one_page.dart';
import 'package:go_green/widgets/app_button.dart';
import 'package:go_green/widgets/onborading_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomPage extends StatefulWidget {
  static const name = "/welcome-page";
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FractionallySizedBox(
              child: Image.asset(
                "assets/images/plant.png",
                fit: BoxFit.contain,
                alignment: Alignment.bottomRight,
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(height: 42),
                  Text(
                    "Welcome",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 26),
                  Text(
                    "We're glad that\nyou are here",
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Spacer(),

                  AppButton(
                    title: "Let's get started",
                    onPressed: () {
                      Navigator.pushNamed(context, OnboradingOnePage.name);
                    },
                    rightPadding: 0,
                  ),
                  const SizedBox(height: 16),
                  OnboradingPageIndicator(activeIndex: 0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
