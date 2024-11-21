import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/auth/registration_success_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber>
    with SingleTickerProviderStateMixin {
  String otpCode = '';
  TextEditingController otpTextController = TextEditingController();
  int maxOtpLength = 4;

  AnimationController? _animationController;
  int levelClock = 2 * 30;
  bool _showResendButton = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: levelClock));

    _animationController!.forward();

    // Add a listener to the animation controller to detect when it completes
    _animationController!.addListener(() {
      if (_animationController!.isCompleted) {
        setState(() {
          _showResendButton = true; // Show the resend button after countdown
        });
      }
    });

    _listenSmsCode();
    _getAppSign();
  }

  void _getAppSign() async {
//?  use this code to get sms signature for your app
    final String signature = await SmsAutoFill().getAppSignature;
    print("Signature: $signature");
  }

  _listenSmsCode() async {
    await SmsAutoFill().listenForCode();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    _animationController!.dispose();
    super.dispose();
  }

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
                "Verify phone number",
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              12.sbH,
              Text(
                "Enter code sent to you!",
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.mainOrange,
                ),
              ),
              52.sbH,
              PinFieldAutoFill(
                codeLength: maxOtpLength,
                autoFocus: true,
                controller: otpTextController,
                currentCode: otpCode,
                decoration: BoxLooseDecoration(
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  strokeColorBuilder:
                      FixedColorBuilder(Colors.black.withOpacity(0.3)),
                  radius: const Radius.circular(12),
                ),
                onCodeChanged: (code) {
                  setState(() {
                    otpCode = code ?? '';
                    otpTextController.text = code ?? '';
                  });
                  if (code?.length == maxOtpLength) {
                    FocusScope.of(context).requestFocus(FocusNode());

                    // setState(() {
                    //   otpCodeIsFour = true;
                    // });
                  }
                },
              ),
              24.sbH,
              // if (_animationController!.isAnimating) ...[
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Resend code in ",
              //         style: GoogleFonts.inter(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.black,
              //         ),
              //       ),
              //       Countdown(
              //         animation: StepTween(
              //           begin: levelClock, // THIS IS A USER ENTERED NUMBER
              //           end: 0,
              //         ).animate(_animationController!),
              //       ),
              //     ],
              //   ),
              // ] else ...[
              //   // SizedBox(
              //   //   height: 56,
              //   //   width: double.infinity,
              //   //   child: TextButton(
              //   //     onPressed: () async {
              //   //       //?  use this code to get sms signature for your app
              //   //       // final String signature = await SmsAutoFill().getAppSignature;
              //   //       // print("Signature: $signature");

              //   //       _animationController!.reset();
              //   //       _animationController!.forward();
              //   //     },
              //   //     style: const ButtonStyle(
              //   //       backgroundColor:
              //   //           WidgetStatePropertyAll(ProjectColors.mainOrange),
              //   //       shape: WidgetStatePropertyAll(
              //   //         RoundedRectangleBorder(
              //   //           borderRadius: BorderRadius.all(
              //   //             Radius.circular(16),
              //   //           ),
              //   //         ),
              //   //       ),
              //   //     ),
              //   //     child: Row(
              //   //       mainAxisAlignment: MainAxisAlignment.center,
              //   //       children: [
              //   //         Text(
              //   //           "Resend",
              //   //           style: GoogleFonts.inter(
              //   //             fontSize: 16,
              //   //             fontWeight: FontWeight.w600,
              //   //             color: Colors.white,
              //   //           ),
              //   //         ),
              //   //       ],
              //   //     ),
              //   //   ),
              //   // ),

              //   GestureDetector(
              //     onTap: () async {
              //       //?  use this code to get sms signature for your app
              //       // final String signature = await SmsAutoFill().getAppSignature;
              //       // print("Signature: $signature");

              //       _animationController!.reset();
              //       _animationController!.forward();
              //     },
              //     child: Center(
              //       child: Text(
              //         "Resend",
              //         style: GoogleFonts.inter(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.black,
              //           decoration: TextDecoration.underline,
              //         ),
              //       ),
              //     ),
              //   ),
              // ],

              if (!_showResendButton) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resend code in ",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Countdown(
                      animation: StepTween(
                        begin: levelClock,
                        end: 0,
                      ).animate(_animationController!),
                    ),
                  ],
                ),
              ] else ...[
                GestureDetector(
                  onTap: () async {
                    _animationController!.reset();
                    _animationController!.forward();
                    setState(() {
                      _showResendButton =
                          false; // Hide the resend button and restart countdown
                    });
                  },
                  child: Center(
                    child: Text(
                      "Resend",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],

              100.sbH,
              SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  onPressed: otpCode.length == maxOtpLength
                      ? () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const RegistrationSuccessScreen();
                              },
                            ),
                          );
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      otpCode.length == maxOtpLength
                          ? ProjectColors.mainOrange
                          : ProjectColors.darkGray,
                    ),
                    shape: const WidgetStatePropertyAll(
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
                        "Verify",
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

class Countdown extends AnimatedWidget {
  final Animation<int> animation;

  const Countdown({
    super.key,
    required this.animation,
  }) : super(listenable: animation);

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        // '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
        clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0');
    return Text(
      "${timerText}s",
      style: GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
