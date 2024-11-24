import 'package:flutter/material.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_4you_app/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EntereGiftCodeScreen extends StatefulWidget {
  const EntereGiftCodeScreen({super.key});

  @override
  State<EntereGiftCodeScreen> createState() => _EntereGiftCodeScreenState();
}

class _EntereGiftCodeScreenState extends State<EntereGiftCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.white,
        // foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leadingWidth: 32,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              "assets/svg/arrow_backward_icon.svg",
              height: 12,
              // width: 20,
              colorFilter: const ColorFilter.mode(
                ProjectColors.mainOrange,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        // title: Image.asset(
        //   'assets/images/logo_with_tagline.png',
        //   height: 44,
        //   width: 44,
        // ),
        // actions: [
        //   SvgPicture.asset(
        //     "assets/svg/shopping_bag_icon.svg",
        //     height: 24,
        //     width: 24,
        //     colorFilter: const ColorFilter.mode(
        //       ProjectColors.mainOrange,
        //       BlendMode.srcIn,
        //     ),
        //   ),
        //   14.sbW,
        //   SvgPicture.asset(
        //     "assets/svg/profile_icon_1.svg",
        //     height: 24,
        //     width: 24,
        //     colorFilter: const ColorFilter.mode(
        //       ProjectColors.mainOrange,
        //       BlendMode.srcIn,
        //     ),
        //   ),
        //   20.sbW,
        // ],
      
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            48.sbH,
            Center(
              child: Text(
                'Enter eGift Code',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.textBlack,
                ),
              ),
            ),
            32.sbH,
            SvgPicture.asset(
              "assets/svg/enter_egift_icon.svg",
              height: 65,
              // width: 24,
              colorFilter: const ColorFilter.mode(
                Color(0xFF928383),
                BlendMode.srcIn,
              ),
            ),
            26.sbH,
            const CustomTextField(
              hintText: "Enter code",
              textInputType: TextInputType.text,
            ),
            32.sbH,
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
                      "Upload",
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
