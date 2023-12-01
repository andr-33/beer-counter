import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BeerCounter extends StatefulWidget{
  final String type;

  const BeerCounter({
    super.key,
    required this.type,
  });

  @override
  State<BeerCounter> createState() => _BeerCounterState();
}

class _BeerCounterState extends State<BeerCounter> {
  bool _isSwiping = false;
  int _counter = 0;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onVerticalDragUpdate: (details){
        if(details.primaryDelta! < -10 && !_isSwiping){
          _isSwiping = true;

          setState(() {
            _counter ++;
          });
        }

        if(details.primaryDelta! > 10 && !_isSwiping){
          _isSwiping = true;

          setState(() {
            if(_counter > 0){
              _counter --;
            }
          });
        }
      },
      onVerticalDragEnd: (details){
        _isSwiping = false;
      },
      child: Bounce(
        child: Container(
          color: Colors.amberAccent,
          width: MediaQuery.of(context).size.width,
          height: 500,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Text("${widget.type}: $_counter"),
        ),
      )
    );
  }
}