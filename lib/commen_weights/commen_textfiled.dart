import 'package:flutter/material.dart';

class Commen_Textfiled extends StatelessWidget {
  const Commen_Textfiled({
    Key? key,
    this.ontap,
    this.onchange,
    this.validator,
    this.obscure = true,
    this.msxlength,
    this.ktype,
    this.controller,
    this.sufiixicon,
    this.preficicon,
    this.hinttext,
    this.filed,
    this.fillcolor,
    this.counter,
    this.border,
  }) : super(key: key);
  final void Function()? ontap;
  final void Function(String)? onchange;
  final String? Function(String?)? validator;
  final bool obscure;
  final msxlength;
  final ktype;
  final TextEditingController? controller;
  final sufiixicon;
  final preficicon;
  final hinttext;
  final bool? filed;
  final fillcolor;
  final counter;
  final border;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: ontap,
      obscureText: obscure,
      onChanged: onchange,
      validator: validator,
      maxLength: msxlength,
      keyboardType: ktype,
      controller: controller,
      decoration: InputDecoration(
        border: border,
        counter: counter,
        fillColor: fillcolor,
        filled: filed,
        prefixIcon: preficicon,
        suffixIcon: sufiixicon,
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
