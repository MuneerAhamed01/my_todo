import 'package:flutter/material.dart';

class AppInputDecorationTheme extends InputDecorationTheme {
  AppInputDecorationTheme()
      : super(
          alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: _border(),
          enabledBorder: _border(),
          focusedBorder: _border(),
          errorBorder: _border(true),
          focusedErrorBorder: _border(),
          contentPadding: const EdgeInsets.all(14),
          disabledBorder: _border(),
          filled: false,
        );

  static OutlineInputBorder _border([bool isError = false]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: isError ? Colors.red : Colors.white),
    );
  }
}
