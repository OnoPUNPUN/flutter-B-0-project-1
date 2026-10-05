import 'package:flutter/material.dart';
import 'package:go_green/pages/auth/login_page.dart';
import 'package:go_green/widgets/app_button.dart';
import 'package:go_green/widgets/onborading_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboradingTwoPage extends StatelessWidget {
  static const name = "/onboradin-two-page";
  const OnboradingTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            children: [
              Center(
                child: FractionallySizedBox(
                  child: Image.asset(
                    "assets/images/pant3.png",
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
              const SizedBox(height: 41),
              Text(
                "Connect With Other\nPlant Lovers",
                textAlign: .center,
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 41),
              Text(
                "Join A Community",
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Spacer(),
              AppButton(
                title: "Create Account",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, LoginPage.name);
                },
                rightPadding: 0,
              ),
              const SizedBox(height: 16),
              OnboradingPageIndicator(activeIndex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
