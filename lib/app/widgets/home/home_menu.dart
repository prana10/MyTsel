import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          card(
            'Internet',
            '12.19',
            'GB',
          ),
          const SizedBox(width: 16),
          card(
            'Telpon',
            '0',
            'Min',
          ),
          const SizedBox(width: 16),
          card(
            'SMS',
            '23',
            'SMS',
          ),
        ],
      ),
    );
  }

  Widget card(String title, String count, String unit) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff102535).withOpacity(0.05),
              blurRadius: 16,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: const Color(0xff1E272E),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  count,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffEC2028),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  unit,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xff747D8C),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
