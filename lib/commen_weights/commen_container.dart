import 'package:flutter/material.dart';

class Commen_Container extends StatelessWidget {
  const Commen_Container(
      {Key? key,
      this.height,
      this.width,
      this.color,
      this.ontap,
      this.child,
      this.border,
      this.boxShadow,
      this.margin,
      this.image,
      this.borderRadius})
      : super(key: key);

  final height;
  final width;
  final borderRadius;
  final DecorationImage? image;
  final List<BoxShadow>? boxShadow;
  final color;
  final border;
  final EdgeInsetsGeometry? margin;
  final void Function()? ontap;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: image,
          color: color,
          borderRadius: borderRadius,
          border: border,
          boxShadow: boxShadow,
        ),
        child: child,
      ),
    );
  }
}
