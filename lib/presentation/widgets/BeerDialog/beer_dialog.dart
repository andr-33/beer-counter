import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeerDialog extends StatelessWidget {
  final String type;
  final double liters;

  const BeerDialog({super.key, required this.type, required this.liters});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 260,
        child: OverflowBox(
          alignment: Alignment.bottomCenter,
          maxHeight: 320,
          child: Column(children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 60,
              child: Image.asset(
                'lib/assets/images/dialog.png',
                width: 90,
                height: 90,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              height: 200,
              child: Column(children: [
                Text(
                  "Una $type equivale a $liters L",
                  style: GoogleFonts.lexendDeca(
                      fontSize: 20, color: const Color(0xFF363636)),
                ),
                Text(
                  "¿Sabias que?",
                  style: GoogleFonts.lexendDeca(
                      fontSize: 28,
                      color: const Color(0xFF363636),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Los vikingos creían que, en el Valhalla, el paraíso que esperaban tras la muerte, les esperaría una cabra gigante que les suministraría eternamente de cerveza.",
                  style: GoogleFonts.lexendDeca(
                      fontSize: 15, color: const Color(0xFF363636)),
                  textAlign: TextAlign.center,
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
