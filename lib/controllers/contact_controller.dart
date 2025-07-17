import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './../services/services.dart';

class ContactController extends GetxController {
  final isLoading = false.obs;

  Future<void> sendEmail(BuildContext context) async {
    _start();
    try {
      await ContactService.sendEmail(
        context,
        'alef.luciano@gmail.com',
        subject: 'Contato',
        body: 'Olá Alef, tudo bem?',
      );
    } finally {
      _end();
    }
  }

  Future<void> sendWhatsApp(BuildContext context) async {
    _start();
    try {
      await ContactService.sendWhatsApp(
        context,
        '+5541995423288',
        'Olá Alef, vi seu cartão de visita!',
      );
    } finally {
      _end();
    }
  }

  Future<void> launchLinkedIn(BuildContext context) async {
    _start();
    try {
      await UrlLauncherService.launchUrlWithFeedback(
        context,
        'https://www.linkedin.com/in/alef-luciano-264b0985/',
      );
    } finally {
      _end();
    }
  }

  Future<void> launchGitHub(BuildContext context) async {
    _start();
    try {
      await UrlLauncherService.launchUrlWithFeedback(
        context,
        'https://github.com/alefluciano10',
      );
    } finally {
      _end();
    }
  }

  void _start() => isLoading.value = true;
  void _end() => isLoading.value = false;
}
