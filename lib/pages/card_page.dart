import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './../widgets/widgets.dart';
import './../models/models.dart';
import './../controllers/controllers.dart';
import 'package:get/get.dart';

class CardPage extends StatelessWidget {
  CardPage({super.key});

  final contactController = Get.put(ContactController());

  List<ContactInfo> _contacts(BuildContext context) => [
    ContactInfo(
      icon: FontAwesomeIcons.envelope,
      label: 'E-mail',
      onPressed: () => contactController.sendEmail(context),
    ),
    ContactInfo(
      icon: FontAwesomeIcons.whatsapp,
      label: 'WhatsApp',
      iconColor: Colors.green,
      onPressed: () => contactController.sendWhatsApp(context),
    ),
    ContactInfo(
      icon: FontAwesomeIcons.linkedin,
      label: 'LinkedIn',
      iconColor: Colors.blue,
      onPressed: () => contactController.launchLinkedIn(context),
    ),
    ContactInfo(
      icon: FontAwesomeIcons.github,
      label: 'GitHub',
      iconColor:
          Theme.of(context).brightness == Brightness.dark
              ? Colors.grey[200]
              : Colors.black,
      onPressed: () => contactController.launchGitHub(context),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 600;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: isWide ? 600 : double.infinity,
              ),
              child: SequentialFadeSlide(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/211544625?s=400&u=174f471c305bba0ded7149ab1800ae123cc7aad5&v=4',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Alef Luciano',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Desenvolvedor Mobile',
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  Divider(thickness: 1.2, color: Colors.indigo.shade200),
                  const SizedBox(height: 12),
                  Text(
                    'Hard Skills',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: const [
                      SkillChip(label: 'Dart'),
                      SkillChip(label: 'Flutter'),
                      SkillChip(label: 'SQL'),
                      SkillChip(label: 'Git'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Divider(thickness: 1.2, color: Colors.indigo.shade200),
                  const SizedBox(height: 12),
                  Text(
                    'Contato',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 20,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children:
                        _contacts(context)
                            .map(
                              (contact) => ContactButton(
                                icon: contact.icon,
                                label: contact.label,
                                iconColor: contact.iconColor,
                                onPressed: contact.onPressed,
                              ),
                            )
                            .toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
