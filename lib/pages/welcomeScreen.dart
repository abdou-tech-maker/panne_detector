// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            "assets/images/welcome.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 110,
            right: 8,
            left: 7,
            height: 167,
            child: Image.asset(
              'assets/images/svgg.png',
            )),
        Positioned(
            top: 295,
            left: 20,
            right: 20,
            height: 189,
            child: Text(
              'PANNE DETECTOR',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4),
            )),
        Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.infinity, 55),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              child: Text(
                'Log In',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            )),
        Positioned(
            bottom: 49,
            left: 72,
            right: 72,
            child: Column(
              children: [
                Text(
                  'By continuing, you agree to Our Terms &',
                  maxLines: 1,
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Center(
                    child: Text(
                  "Privacy Policy",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ))
              ],
            )),
      ],
    ));
  }
}
