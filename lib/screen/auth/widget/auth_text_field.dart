import 'package:fashtask/call/border_style.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final String hintText;

  const AuthTextField({
    super.key,
    required this.hintText,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.hintText.trim().toLowerCase() == 'password'
            ? _obscure
            : false,
        decoration: InputDecoration(
          suffix: widget.hintText.toLowerCase == 'password'
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  child: const Icon(
                      _obscure ? Icons.visibility : Icons.visibility_off))
              : null,
          prefixIcon: widget.hintText.trim().toLowerCase() == "email"
              ? const Icon(Icons.email)
              : null,
          hintText: widget.hintText,
          border: AppBorder.outlineInputBorder,
          focusedBorder: AppBorder.outlineInputBorder,
          enabledBorder: AppBorder.outlineInputBorder,
        ));
  }
}
