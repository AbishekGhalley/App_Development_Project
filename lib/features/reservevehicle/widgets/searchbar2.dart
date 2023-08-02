import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:myekigai/reusables/key_navbar.dart';
import 'package:myekigai/theme/pallete.dart';

class CustomSearchBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomSearchBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3FABABAB),
            blurRadius: 4,
            offset: Offset(1, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x3FABABAB),
            blurRadius: 4,
            offset: Offset(-1, -1),
            spreadRadius: 0,
          )
        ],
      ),
      child: GestureDetector(
        onTap: () {
          // Handle search bar tap
        },
        child: Row(
          children: [
            IconButton(
              padding: const EdgeInsets.only(bottom: 1),
              icon: const Icon(Icons.menu_rounded, size: 32),
              onPressed: () {
                // Handle hamburger menu button press
                global_navbar.reservescaffoldKey2.currentState?.openDrawer();
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Stations & Destinations',
                  hintStyle: GoogleFonts.sen(
                    color: Pallete.geryColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(
                    bottom: 10,
                    left: 4,
                    right: 4,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            IconButton(
              padding: const EdgeInsets.only(bottom: 1),
              icon: const Icon(
                Icons.mic_rounded,
                size: 24,
                color: Colors.blue,
              ),
              onPressed: () {
                // Handle microphone button press by backend
              },
            ),
          ],
        ),
      ),
    );
  }
}
