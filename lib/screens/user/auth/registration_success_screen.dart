import 'package:flutter/material.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "$svgPath/reg_success_icon.svg",
                      width: 120,
                      height: 120,
                    ),
                    36.sbH,
                    Text(
                      "Success!",
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: ProjectColors.mainOrange,
                      ),
                    ),
                    8.sbH,
                    SizedBox(
                      width: 250,
                      child: Text(
                        "You have successfully registered in 4YOU and can start working in it",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF191A1D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(ProjectColors.mainOrange),
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
              48.sbH,
            ],
          ),
        ),
      ),
    );
  }
}
