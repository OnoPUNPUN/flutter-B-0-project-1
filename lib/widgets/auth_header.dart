import 'package:flutter/material.dart';
import 'package:go_green/core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  const AuthHeader({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Container(
          height: 54,
          width: 54,
          decoration: BoxDecoration(
            color: AppColors.botanicalGreen,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(Icons.eco, color: AppColors.surface, size: 30),
        ),
        const SizedBox(height: 26),
        Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleLarge,
          ),
        ),

        const SizedBox(height: 10),
        Text(
          subTitle,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
