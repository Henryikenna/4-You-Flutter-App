// import 'package:flutter/material.dart';
// import 'package:flutter_4you_app/utils/colors.dart';
// import 'package:flutter_4you_app/utils/extensions.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// class UserHomeScreen extends StatefulWidget {
//   const UserHomeScreen({super.key});

//   @override
//   State<UserHomeScreen> createState() => _UserHomeScreenState();
// }

// class _UserHomeScreenState extends State<UserHomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> headerTabsContent = [
//       {
//         'image':
//             'https://images.unsplash.com/photo-1493857671505-72967e2e2760?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//         'title': 'My Shop',
//       },
//       {
//         'image':
//             'https://images.unsplash.com/photo-1504196606672-aef5c9cefc92?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//         'title': 'Birthday',
//       },
//       {
//         'image':
//             'https://images.unsplash.com/photo-1541445976433-f466f228a409?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//         'title': 'Occasions',
//       },
//       {
//         'image':
//             'https://images.unsplash.com/photo-1563302111-eab4b145e6c9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//         'title': 'All Brands',
//       },
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         // backgroundColor: Colors.white,
//         elevation: 0.0,
//         toolbarHeight: 70,
//         centerTitle: true,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: GestureDetector(
//             onTap: () {},
//             child: Container(
//               width: 30,
//               height: 30,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(color: ProjectColors.mainOrange),
//               ),
//               child: Center(
//                 child: SvgPicture.asset(
//                   "assets/svg/search_icon.svg",
//                   height: 20,
//                   width: 20,
//                   colorFilter: const ColorFilter.mode(
//                     Colors.black,
//                     BlendMode.srcIn,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         title: Image.asset(
//           'assets/images/logo_with_tagline.png',
//           height: 44,
//           width: 44,
//         ),
//         actions: [
//           SvgPicture.asset(
//             "assets/svg/shopping_bag_icon.svg",
//             height: 24,
//             width: 24,
//             colorFilter: const ColorFilter.mode(
//               ProjectColors.mainOrange,
//               BlendMode.srcIn,
//             ),
//           ),
//           14.sbW,
//           SvgPicture.asset(
//             "assets/svg/profile_icon_1.svg",
//             height: 24,
//             width: 24,
//             colorFilter: const ColorFilter.mode(
//               ProjectColors.mainOrange,
//               BlendMode.srcIn,
//             ),
//           ),
//           20.sbW,
//         ],
//       ),
//       body: Column(
//         children: [
//           ListView.separated(
//             scrollDirection: Axis.horizontal,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Image.network(
//                     headerTabsContent[index]['image'],
//                     height: 68,
//                     // width: double.infinity,
//                     width: 68,
//                   ),
//                   8.sbH,
//                   Text(
//                     headerTabsContent[index]['title'],
//                     style: GoogleFonts.inter(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w400,
//                       color: const Color(0xFF322F2F),
//                     ),
//                   ),
//                 ],
//               );
//             },
//             separatorBuilder: (context, index) => 16.sbW,
//             itemCount: headerTabsContent.length,
//           ),
//           Expanded(child: SizedBox()),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/user/home_page_tab_contents/all_brands_tab_content.dart';
import 'package:flutter_4you_app/screens/user/home_page_tab_contents/birthday_tab_content.dart';
import 'package:flutter_4you_app/screens/user/home_page_tab_contents/my_shop_tab_content.dart';
import 'package:flutter_4you_app/screens/user/home_page_tab_contents/occasions_tab_content.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int selectedTabIndex = 0; // Track selected tab

  final List<Map<String, dynamic>> headerTabsContent = [
    {
      'image':
          'https://images.unsplash.com/photo-1493857671505-72967e2e2760?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'My Shop',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1504196606672-aef5c9cefc92?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Birthday',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1541445976433-f466f228a409?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Occasions',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1563302111-eab4b145e6c9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'All Brands',
    },
  ];

  // Widget to build content for each tab
  Widget _buildTabContent(int index) {
    switch (index) {
      case 0:
        return const MyShopTabContent();
      case 1:
        return const BirthdayTabContent();
      case 2:
        return const OccasionsTabContent();
      case 3:
        return const AllBrandsTabContent();
      default:
        return const SizedBox();
    }
  }

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
          SizedBox(
            height: 100, // Fixed height for the tab bar
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTabIndex = index;
                    });
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: selectedTabIndex == index
                                ? ProjectColors.mainOrange
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            headerTabsContent[index]['image'],
                            height: 68,
                            width: 68,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      8.sbH,
                      Text(
                        headerTabsContent[index]['title'],
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: selectedTabIndex == index
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: const Color(0xFF322F2F),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => 16.sbW,
              itemCount: headerTabsContent.length,
            ),
          ),
          Expanded(
            child: _buildTabContent(selectedTabIndex),
          ),
        ],
      ),
    );
  }
}
