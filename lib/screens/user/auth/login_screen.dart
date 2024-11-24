import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/auth/forgot_password/forgot_password_screen.dart';
import 'package:flutter_4you_app/screens/user/auth/signup_screen.dart';
import 'package:flutter_4you_app/screens/user/user_bottom_nav_bar.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_4you_app/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                24.sbH,
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back!",
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Sign In",
                            style: GoogleFonts.inter(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: ProjectColors.mainOrange,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/logo_with_tagline.png',
                        height: 80,
                        width: 60,
                      ),
                    ],
                  ),
                ),
                40.sbH,
                const CustomTextField(
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
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
                16.sbH,
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ForgotPasswordScreen();
                        },
                      ),
                    );
                    },
                    child: Text(
                      "Forget Password?",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                24.sbH,
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            // return const UserHomeScreen();
                            return const UserBottomNavBar();
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
                          "Sign In",
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
                32.sbH,
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
                        "OR",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFA0A0A0),
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
                
                32.sbH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have an account? ",
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
                              return const UserSignupScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ProjectColors.mainOrange,
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
    );
  }
}
