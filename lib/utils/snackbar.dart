// Global key for accessing the NavigatorState
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// Global function to show a snackbar
void showGlobalSnackBar({
  required String message,
  Duration duration = const Duration(seconds: 3),
  Color backgroundColor = Colors.black87,
  Color textColor = Colors.white,
  SnackBarAction? action,
}) {
  // Get the current context using the navigator key
  final context = navigatorKey.currentContext;
  if (context == null) return;

  // Remove any existing snackbars
  ScaffoldMessenger.of(context).removeCurrentSnackBar();

  // Show the new snackbar
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      duration: duration,
      backgroundColor: backgroundColor,
      action: action,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
