import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/user_home_screen.dart';
import 'package:flutter_4you_app/screens/user/user_wallet_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserBottomNavBar extends StatefulWidget {
  const UserBottomNavBar({super.key});

  @override
  State<UserBottomNavBar> createState() => _UserBottomNavBarState();
}

class _UserBottomNavBarState extends State<UserBottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const UserHomeScreen(),
    const UserWalletScreen(),
    const Text('Page 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Navigation Bar'),
      // ),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: _currentIndex == 0 ? 44 : null,
              height: _currentIndex == 0 ? 44 : null,
              decoration: _currentIndex == 0
                  ? const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    )
                  : null,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/navbar_NumberFourCircle.svg",
                    height: 24,
                    width: 24,
                    colorFilter: ColorFilter.mode(
                      _currentIndex == 0
                          ? ProjectColors.mainOrange
                          : const Color(0xFF292D32),
                      BlendMode.srcIn,
                    ),
                  ),
                  Positioned(
                    // bottom: 0,
                    // left: 0,
                    // right: 0,
                    child: SvgPicture.asset(
                      "assets/svg/navbar_NumberFour.svg",
                      height: 24,
                      width: 24,
                      colorFilter: ColorFilter.mode(
                        _currentIndex == 0
                            ? ProjectColors.mainOrange
                            : const Color(0xFF292D32),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: _currentIndex == 1 ? 44 : null,
              height: _currentIndex == 1 ? 44 : null,
              decoration: _currentIndex == 1
                  ? const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    )
                  : null,
              child: Center(
                child: SvgPicture.asset(
                  "assets/svg/navbar_emptyWallet.svg",
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    _currentIndex == 1
                        ? ProjectColors.mainOrange
                        : const Color(0xFF292D32),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: _currentIndex == 2 ? 44 : null,
              height: _currentIndex == 2 ? 44 : null,
              decoration: _currentIndex == 2
                  ? const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    )
                  : null,
              child: Center(
                child: SvgPicture.asset(
                  "assets/svg/navbar_barcode.svg",
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    _currentIndex == 2
                        ? ProjectColors.mainOrange
                        : const Color(0xFF292D32),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            label: 'Barcode',
          ),
        ],
      ),
    );
  }
}
