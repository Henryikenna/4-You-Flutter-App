import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/stores/stores_home_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_4you_app/widgets/custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class StoresLoginScreen extends StatefulWidget {
  const StoresLoginScreen({super.key});

  @override
  State<StoresLoginScreen> createState() => _StoresLoginScreenState();
}

class _StoresLoginScreenState extends State<StoresLoginScreen> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            54.sbH,
            Center(
              child: Image.asset(
                '$imagesPath/logo_with_tagline.png',
                height: 80,
                width: 60,
              ),
            ),
            5.sbH,
            Text(
              "Contact your store admin for your user login ID",
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ProjectColors.mainOrange,
              ),
            ),
            50.sbH,
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
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const ForgotPasswordScreen();
                  //     },
                  //   ),
                  // );
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
                        return const StoresHomeScreen();
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
          ],
        ),
      ),
    );
  }
}
