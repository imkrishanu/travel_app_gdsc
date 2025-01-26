import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String labelText;

  const Textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.labelText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  labelText: labelText,
                  labelStyle: GoogleFonts.outfit(color: Colors.black),
                  enabledBorder: OutlineInputBorder(borderRadius:
                  BorderRadius.circular(22),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: hintText,
                ),
              ),
            );
  }
}