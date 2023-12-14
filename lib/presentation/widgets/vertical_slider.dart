import 'package:flutter/material.dart';

class VerticalSlider extends StatefulWidget{
  final Widget child;

  const VerticalSlider({
    super.key,
    required this.child
  });

  @override
  State<VerticalSlider> createState ()=> _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider>{
  double _translateY = 0;
  bool _isSwiping = false;

  @override
  Widget build (BuildContext context){
    Widget child = widget.child;

    return GestureDetector(
      onVerticalDragUpdate: (details){
        if(details.primaryDelta! < -10 && !_isSwiping){
          _isSwiping = true;

          setState(() {
            _translateY = -20;
          });
        }

        if(details.primaryDelta! > 10 && !_isSwiping){
          _isSwiping = true;

          setState(() {
            _translateY = 20;
          });
        }
      },
      onVerticalDragEnd: (details){
        _isSwiping = false;
        setState(() {
          _translateY = 0;
        });
      },
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
        transform: Matrix4.translationValues(0, _translateY, 0),
        child: child,
      ),
    );
  }

}