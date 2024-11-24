import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/enter_egift_code_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UserWalletScreen extends StatefulWidget {
  const UserWalletScreen({super.key});

  @override
  State<UserWalletScreen> createState() => _UserWalletScreenState();
}

class _UserWalletScreenState extends State<UserWalletScreen> {
  final List<Map<String, dynamic>> headerTabsContent = [
    {
      'icon': SvgPicture.asset(
        "assets/svg/recieved_icon.svg",
        height: 24,
        width: 24,
        colorFilter: const ColorFilter.mode(
          Color(0xFF2DEA1C),
          BlendMode.srcIn,
        ),
      ),
      'title': 'Recieved',
    },
    {
      'icon': SvgPicture.asset(
        "assets/svg/redeemed_icon.svg",
        height: 24,
        width: 24,
        colorFilter: const ColorFilter.mode(
          Color(0xFF1526C2),
          BlendMode.srcIn,
        ),
      ),
      'title': 'Redeemed',
    },
    {
      'icon': SvgPicture.asset(
        "assets/svg/expired_icon.svg",
        height: 24,
        width: 24,
        colorFilter: const ColorFilter.mode(
          Color(0xFFF10E0E),
          BlendMode.srcIn,
        ),
      ),
      'title': 'Expired',
    },
  ];

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
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ProjectColors.mainOrange),
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets/svg/search_icon.svg",
                  height: 20,
                  width: 20,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Image.asset(
          'assets/images/logo_with_tagline.png',
          height: 44,
          width: 44,
        ),
        actions: [
          SvgPicture.asset(
            "assets/svg/shopping_bag_icon.svg",
            height: 24,
            width: 24,
            colorFilter: const ColorFilter.mode(
              ProjectColors.mainOrange,
              BlendMode.srcIn,
            ),
          ),
          14.sbW,
          SvgPicture.asset(
            "assets/svg/profile_icon_1.svg",
            height: 24,
            width: 24,
            colorFilter: const ColorFilter.mode(
              ProjectColors.mainOrange,
              BlendMode.srcIn,
            ),
          ),
          20.sbW,
        ],
      ),
      body: Column(
        children: [
          24.sbH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              // height: 70,
              // width: double.infinity,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                // padding: const EdgeInsets.symmetric(horizontal: 16),
                // scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                // itemBuilder: (context, index) {
                headerTabsContent.length,
                (index) {
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 70,
                        width: 102,
                        margin: EdgeInsets.only(
                          right: index >= headerTabsContent.length - 1 ? 0 : 16,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x0404060f),
                              offset: Offset(0, 4),
                              blurRadius: 20,
                              spreadRadius: 20,
                            ),
                          ],
                        ),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            headerTabsContent[index]['icon'],
                            10.sbH,
                            Text(
                              headerTabsContent[index]['title'],
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: ProjectColors.textBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                // separatorBuilder: (context, index) => 16.sbW,
                // itemCount: headerTabsContent.length,
              ),
            ),
          ),
          24.sbH,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFDF7EC),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'eGift Cards',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: ProjectColors.textBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    // top: 60,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 24,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Scan Gift Card',
                                    style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: ProjectColors.textBlack,
                                    ),
                                  ),
                                  24.sbH,
                                  SizedBox(
                                    height: 56,
                                    width: double.infinity,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            ProjectColors.mainOrange),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/scan_egift_icon.svg",
                                            height: 24,
                                            width: 24,
                                            colorFilter: const ColorFilter.mode(
                                              Colors.white,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                          12.sbW,
                                          Text(
                                            "Scan eGift Code",
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
                                  16.sbH,
                                  SizedBox(
                                    height: 56,
                                    width: double.infinity,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const EntereGiftCodeScreen();
                                        }));
                                      },
                                      style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            ProjectColors.mainOrange),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/enter_egift_icon.svg",
                                            height: 18,
                                            // width: 24,
                                            colorFilter: const ColorFilter.mode(
                                              Colors.white,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                          12.sbW,
                                          Text(
                                            "Enter eGift Code",
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
                            );
                          },
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        margin: const EdgeInsets.only(top: 60),
                        padding: const EdgeInsets.all(24),
                        decoration: const BoxDecoration(
                          color: Color(0xFFDDD5C7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/scan_icon.svg",
                              height: 56,
                              width: 56,
                              colorFilter: const ColorFilter.mode(
                                ProjectColors.mainOrange,
                                BlendMode.srcIn,
                              ),
                            ),
                            8.sbH,
                            Text(
                              'Tap to upload a new eGift Card',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: ProjectColors.mainOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
