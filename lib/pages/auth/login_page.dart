import 'package:flutter/material.dart';
import 'package:go_green/core/theme/app_colors.dart';
import 'package:go_green/pages/auth/registration_page.dart';
import 'package:go_green/widgets/app_text_field.dart';
import 'package:go_green/widgets/auth_header.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  static const name = "/login-page";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fromKey = GlobalKey<FormState>();
  final _emailTEController = TextEditingController();
  final _passwordTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 10, 24, 32),
            child: Form(
              key: _fromKey,
              child: Column(
                children: [
                  AuthHeader(
                    title: "Wellback! We missed you",
                    subTitle: "Keep growing your littel corner of green",
                  ),
                  const SizedBox(height: 40),
                  AppTextField(
                    controller: _emailTEController,
                    labelText: "Email",
                    hintText: "example@xyz.com",
                  ),
                  const SizedBox(height: 14),
                  AppTextField(
                    labelText: "Password",
                    hintText: "Enter your 6 digit password",
                    controller: _passwordTEController,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: AppColors.textPrimary),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sing in"),
                    ),
                  ),

                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        "New to Go Green?",
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegistrationPage.name);
                        },
                        child: Text(
                          "Create New account",
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: AppColors.textPrimary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
