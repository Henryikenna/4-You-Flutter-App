import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/auth/login_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_4you_app/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordChangePasswordScreen extends StatefulWidget {
  const ForgotPasswordChangePasswordScreen({super.key});

  @override
  State<ForgotPasswordChangePasswordScreen> createState() =>
      _ForgotPasswordChangePasswordScreenState();
}

class _ForgotPasswordChangePasswordScreenState
    extends State<ForgotPasswordChangePasswordScreen> {
  bool _obscure = true;
  bool _obscure2 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.sbH,
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "$svgPath/back_button_icon.svg",
                        width: 20,
                        // height: 24,
                      ),
                    ],
                  ),
                ),
              ),
              36.sbH,
              Text(
                "New Password",
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              8.sbH,
              Text(
                "Your password must be different from previous password.",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ProjectColors.mainOrange,
                ),
              ),
              36.sbH,
              CustomTextField(
                hintText: "New Password",
                obscure: _obscure,
                textInputType: TextInputType.visiblePassword,
                iconButton: InkWell(
                  onTap: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  child: _obscure
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                          color: ProjectColors.darkGray,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          size: 20,
                          color: ProjectColors.mainOrange,
                        ),
                ),
                onTap: () {},
              ),
              20.sbH,
              Text(
                "Your password needs to be at least 8 characters long. Includes a mix of letters and numbers to make it even safer",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ProjectColors.mainOrange,
                ),
              ),
              6.sbH,
              CustomTextField(
                hintText: "Confirm Password",
                obscure: _obscure2,
                textInputType: TextInputType.visiblePassword,
                iconButton: InkWell(
                  onTap: () {
                    setState(() {
                      _obscure2 = !_obscure2;
                    });
                  },
                  child: _obscure2
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                          color: ProjectColors.darkGray,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          size: 20,
                          color: ProjectColors.mainOrange,
                        ),
                ),
                onTap: () {},
              ),
              const Spacer(),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const UserLoginScreen();
                        },
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      ProjectColors.mainOrange,
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              28.sbH,
            ],
          ),
        ),
      ),
    );
  }
}
