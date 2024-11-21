import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/auth/forgot_password/forgot_password_enter_code_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_4you_app/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController forgotPasswordEmailController = TextEditingController();

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
                "Forgot Password",
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              8.sbH,
              Text(
                "Dont worry! It happens. Please enter your email so we can send you a code.",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ProjectColors.mainOrange,
                ),
              ),
              36.sbH,
              // Text(
              //   "Enter email",
              //   style: GoogleFonts.inter(
              //     fontSize: 12,
              //     fontWeight: FontWeight.w500,
              //     color: Colors.black,
              //   ),
              // ),
              // 8.sbH,
              CustomTextField(
                hintText: "Email",
                controller: forgotPasswordEmailController,
                textInputType: TextInputType.emailAddress,
              ),
              15.sbH,
              SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  // onPressed: forgotPasswordEmailController.text.isNotEmpty ? () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) {
                  //         return const ForgotPasswordEnterCodeScreen();
                  //       },
                  //     ),
                  //   );
                  // } : null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ForgotPasswordEnterCodeScreen();
                        },
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      ProjectColors.mainOrange,
                    ),
                    // WidgetStatePropertyAll(forgotPasswordEmailController.text.isNotEmpty
                    //   ? ProjectColors.mainOrange
                    //   : ProjectColors.darkGray,),
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
            ],
          ),
        ),
      ),
    );
  }
}
