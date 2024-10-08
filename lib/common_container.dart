import 'package:flutter/material.dart';


class CommonContainer extends StatelessWidget {
  CommonContainer({required this.child, required this.color});
  final Widget child;
  final color;

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: this.child,
        ),
      )
    ;
  }
}