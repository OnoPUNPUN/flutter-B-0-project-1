import 'package:flutter/material.dart';
import 'package:go_green/core/theme/app_colors.dart';
import 'package:go_green/pages/auth/login_page.dart';
import 'package:go_green/widgets/app_text_field.dart';
import 'package:go_green/widgets/auth_header.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  static const name = "registration-page";
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameTEController = TextEditingController();
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
              key: _formKey,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  AuthHeader(
                    title: "Join the Community",
                    subTitle: "Enjoy your green Life",
                  ),
                  const SizedBox(height: 34),
                  AppTextField(
                    labelText: "Name",
                    hintText: "Enter your name",
                    controller: _nameTEController,
                  ),
                  const SizedBox(height: 12),
                  AppTextField(
                    labelText: "Email",
                    hintText: "example@xyz.com",
                    controller: _emailTEController,
                  ),
                  const SizedBox(height: 12),
                  AppTextField(
                    labelText: "Password",
                    hintText: "Enter your 6 digit password",
                    controller: _passwordTEController,
                  ),

                  const SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sing Up"),
                    ),
                  ),

                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        "Already Have an Account?",
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginPage.name);
                        },
                        child: Text(
                          "Login Now",
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
}
