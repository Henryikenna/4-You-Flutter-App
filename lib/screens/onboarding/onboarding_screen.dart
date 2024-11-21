import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/auth/auth_choice_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Map<String, dynamic>> onboardingList = [
    {
      "title": "Discover Our New Collection",
      "description":
          "Easy shopping for all your needs just in hand, trusted by millions of people in the world.",
      "image": "assets/images/giftcard_image.png",
    },
    {
      "title": "Order your Style",
      "description":
          "More than a thousand of our bags are available for your luxury.",
      "image": "assets/images/giftcard_image.png",
    },
  ];

  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController();

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final pageState = ref.watch(onboardingNotifier);
    // final pageNotifier = ref.read(onboardingNotifier.notifier);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingList.length,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                // pageNotifier.scrollPage(index.toDouble());
                setState(() {
                  _pageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                final data = onboardingList[index];
                return Column(
                  children: [
                    Expanded(
                      // child: Image.asset('assets/images/giftcard_image.png'),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Image.asset(data['image']),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Text(
                            data['title'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          8.sbH,
                          Text(
                            data['description'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          16.sbH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 56,
              width: _pageIndex == onboardingList.length - 1
                  ? 182
                  : double.infinity,
              child: TextButton(
                onPressed: () {
                  if (_pageIndex == onboardingList.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AuthChoiceScreen()),
                    );
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      const WidgetStatePropertyAll(ProjectColors.mainOrange),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        _pageIndex == onboardingList.length - 1
                            ? const Radius.circular(35)
                            : const Radius.circular(16),
                      ),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _pageIndex == onboardingList.length - 1
                          ? 'Get Started'
                          : "Next",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    if (_pageIndex == onboardingList.length - 1) ...[
                      10.sbW,
                      Container(
                        width: 32,
                        height: 32,
                        // padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ),
          ),
          20.sbH,
        ],
      ),
    );
  }
}
