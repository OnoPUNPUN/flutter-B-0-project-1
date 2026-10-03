import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double rightPadding;
  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.rightPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 88, right: rightPadding, bottom: 20),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(onPressed: onPressed, child: Text(title)),
      ),
    );
  }
}
