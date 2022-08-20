import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixicon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixicon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        obscureText: obscureText,
        keyboardType: keyboardType,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Mínimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: 'Quedan 6 caracteres',
          suffixIcon: suffixicon == null ? null : Icon(suffixicon),
          //prefixIcon: Icon(Icons.verified_user),
          icon: icon == null ? null : Icon(icon),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          //         topRight: Radius.circular(10))),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.green))
        ));
  }
}
