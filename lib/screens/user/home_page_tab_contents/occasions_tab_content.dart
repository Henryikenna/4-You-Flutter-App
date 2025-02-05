import 'package:flutter/material.dart';
import 'package:flutter_4you_app/utils/extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class OccasionsTabContent extends StatelessWidget {
  const OccasionsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Occasions Content',
            style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          16.sbH,
          // Add your My Shop specific content here
        ],
      ),
    );
  }
}