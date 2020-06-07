
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const 는 compile 시점에 할당. const dt = DateTime.now(); (X)
  // final 은 runtime 시점에 할당 가능. final dt = DateTime.now(); (O)
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
