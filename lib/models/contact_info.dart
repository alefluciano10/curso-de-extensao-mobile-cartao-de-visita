import 'package:flutter/material.dart';

class ContactInfo {
  final IconData icon;
  final String label;
  final Color? iconColor;
  final VoidCallback onPressed;

  ContactInfo({
    required this.icon,
    required this.label,
    this.iconColor,
    required this.onPressed,
  });
}
