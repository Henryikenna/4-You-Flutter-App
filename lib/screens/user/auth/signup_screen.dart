import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/auth/login_screen.dart';
import 'package:flutter_4you_app/screens/user/auth/verify_phone_number.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_4you_app/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSignupScreen extends StatefulWidget {
  const UserSignupScreen({super.key});

  @override
  State<UserSignupScreen> createState() => _UserSignupScreenState();
}

class _UserSignupScreenState extends State<UserSignupScreen> {
  bool _obscure = true;

  bool _checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.sbH,
              Text(
                "Create Your Account",
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              12.sbH,
              Text(
                "Join us and make your gifting process effortless!",
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.mainOrange,
                ),
              ),
              30.sbH,
              const CustomTextField(
                hintText: "Username",
                textInputType: TextInputType.name,
              ),
              15.sbH,
              const CustomTextField(
                hintText: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              15.sbH,
              const CustomTextField(
                hintText: "Phone",
                textInputType: TextInputType.phone,
              ),
              15.sbH,
              CustomTextField(
                hintText: "Password",
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
              12.sbH,
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Checkbox.adaptive(
                      value: _checkedValue,
                      splashRadius: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(
                          width: 1.5,
                          color: Colors.black,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _checkedValue = value!;
                        });
                      },
                    ),
                  ),
                  8.sbW,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "I accept ",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ProjectColors.lightGray,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Terms & Privacy Policy",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              24.sbH,
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    thickness: 1,
                    color: ProjectColors.mainGray,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Text(
                      "Or sign in with",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFBFBFBF),
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Divider(
                    thickness: 1,
                    color: ProjectColors.mainGray,
                  )),
                ],
              ),
              24.sbH,
              SizedBox(
                height: 52,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFBFBFBF)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          "assets/svg/facebook_icon.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Continue with Facebook",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ProjectColors.darkGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              15.sbH,
              SizedBox(
                height: 52,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFBFBFBF)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          "assets/svg/google_icon.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Continue with Google",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ProjectColors.darkGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const VerifyPhoneNumber();
                        },
                      ),
                    );
                  },
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
                        "Sign Up",
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
              24.sbH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFA0A0A0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const UserLoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ProjectColors.mainOrange,
                      ),
                    ),
                  ),
                ],
              ),
              24.sbH,
            ],
          ),
        ),
      ),
    );
  }
}
