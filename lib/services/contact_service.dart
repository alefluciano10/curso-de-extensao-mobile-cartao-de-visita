import 'package:flutter/material.dart';
import 'url_launcher_service.dart'; // ajuste o caminho conforme a estrutura do seu projeto

class ContactService {
  static Future<void> sendEmail(
    BuildContext context,
    String email, {
    String? subject,
    String? body,
  }) async {
    final uri = Uri(
      scheme: 'mailto',
      path: email,
      query: Uri.encodeFull('subject=${subject ?? ''}&body=${body ?? ''}'),
    );
    await UrlLauncherService.launchUrlWithFeedback(context, uri.toString());
  }

  static Future<void> sendWhatsApp(
    BuildContext context,
    String phone,
    String message,
  ) async {
    final encodedMessage = Uri.encodeComponent(message);
    final url = 'https://wa.me/$phone?text=$encodedMessage';
    await UrlLauncherService.launchUrlWithFeedback(context, url);
  }
}
