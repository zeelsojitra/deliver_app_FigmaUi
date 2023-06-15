import 'package:flutter/material.dart';

class Commen_Text extends StatelessWidget {
  const Commen_Text(
      {Key? key, this.text, this.color, this.fontweight, this.size})
      : super(key: key);

  final text;
  final color;
  final FontWeight? fontweight;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontweight,
        fontSize: size,
      ),
    );
  }
}
