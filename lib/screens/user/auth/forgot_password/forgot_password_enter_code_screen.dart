import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/auth/forgot_password/forgot_password_change_password_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_4you_app/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordEnterCodeScreen extends StatefulWidget {
  const ForgotPasswordEnterCodeScreen({super.key});

  @override
  State<ForgotPasswordEnterCodeScreen> createState() =>
      _ForgotPasswordEnterCodeScreenState();
}

class _ForgotPasswordEnterCodeScreenState
    extends State<ForgotPasswordEnterCodeScreen> {
  TextEditingController forgotPasswordCodeTextController =
      TextEditingController();

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
                "Enter code",
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              8.sbH,
              CustomTextField(
                hintText: "Code",
                controller: forgotPasswordCodeTextController,
                textInputType: TextInputType.number,
              ),
              15.sbH,
              SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  // onPressed: forgotPasswordCodeTextController.text.length == 4
                  //     ? () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) {
                  //               return const RegistrationSuccessScreen();
                  //             },
                  //           ),
                  //         );
                  //       }
                  //     : null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ForgotPasswordChangePasswordScreen();
                        },
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      ProjectColors.mainOrange,
                      // forgotPasswordCodeTextController.text.length == 4
                      //     ? ProjectColors.mainOrange
                      //     : ProjectColors.darkGray,
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
            ],
          ),
        ),
      ),
    );
  }
}
