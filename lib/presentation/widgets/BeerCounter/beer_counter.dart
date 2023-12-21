import 'package:beer_counter/domain/models/beer_model.dart';
import 'package:beer_counter/presentation/widgets/BeerDialog/beer_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeerCounter extends StatefulWidget {
  final BeerModel beer;

  const BeerCounter({super.key, required this.beer});

  @override
  State<BeerCounter> createState() => _BeerCounterState();
}

class _BeerCounterState extends State<BeerCounter> {
  double _translateY = 0;
  bool _isSwiping = false;
  int _amountColor = 0xFF363636;

  @override
  Widget build(BuildContext context) {
    BeerModel beer = widget.beer;

    return GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! < -10 && !_isSwiping) {
            _isSwiping = true;

            setState(() {
              _translateY = -20;
              beer.amount++;
              _amountColor = 0xFF63BF94;
            });
          }

          if (details.primaryDelta! > 10 && !_isSwiping) {
            _isSwiping = true;

            setState(() {
              _translateY = 20;
              if (beer.amount > 0) {
                beer.amount--;
                _amountColor = 0xFFF2522E;
              }
            });
          }
        },
        onVerticalDragEnd: (details) {
          _isSwiping = false;
          setState(() {
            _translateY = 0;
            _amountColor = 0xFF363636;
          });
        },
        child: AnimatedContainer(
          //color: Colors.blueGrey,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
          transform: Matrix4.translationValues(0, _translateY, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    beer.type,
                    style: GoogleFonts.lexendDeca(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF363636)),
                  ),
                  IconButton(
                    icon: const Icon(Icons.help_outline, color: Color(0xFFA6A6A6),),
                    onPressed:  ()=> showAdaptiveDialog(
                      context: context, 
                      builder: (BuildContext context) => BeerDialog(type: beer.type, liters: beer.liters)
                    ),
                  )
                ],
              ),
              Text(
                "${beer.amount}",
                style: GoogleFonts.lexendDeca(
                    fontSize: 30, color: Color(_amountColor)),
              ),
              Image.asset('lib/assets/images/${beer.image}')
            ],
          ),
        ));
  }
}
